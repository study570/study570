package com.group2.springboot.restaurant.controller;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group2.springboot.restaurant.model.Restaurant;
import com.group2.springboot.restaurant.model.RestaurantService;
import com.group2.springboot.shopreview.model.ArticleList;
import com.group2.springboot.utils.SystemUtils;

@Controller
@SessionAttributes("restaurantController")
public class RestaurantController {

	@Autowired
	ServletContext context;

	@Autowired
	RestaurantService service;

	@Autowired
	public Restaurant restaurant;

	public RestaurantController() {
	}

//	@RequestMapping(path = "/restaurant.controller", method = RequestMethod.GET)
//	public String showForm(Model m) {
//		Restaurant restaurant = new Restaurant(1, "aaa","none","0123456789","臺北市信義區松高路19號6樓","日式餐廳");
//		m.addAttribute("restaurant", restaurant);
//		return "restaurant/restaurant";
//	}

	// read all orderList
	@GetMapping("/restaurantList")
	public @ResponseBody List<Restaurant> queryAllRestaurant(Model model) {
		List<Restaurant> restaurant = service.selectAll();
		return restaurant;
	}

//	@RequestMapping(path = "/aaa", method = RequestMethod.GET)
//	@ResponseBody
//	public List<Restaurant> processAction() {
//
//		List<Restaurant> restaurants = restaurantService.selectAll();
//
//		return restaurants;
//	}

	// show all
	@GetMapping({ "/restaurant" })
	public String showAllOrderList() {
		System.out.print(restaurant + "123456789");
		return "restaurant/restaurant";
	}

//	@GetMapping("/insertRestaurant")
//	public String sendInsertRestaurant() {
//		return "restaurant/restaurantCreate";
//	}
//	
//	@PostMapping("/insertRestaurantToDB")
//	public String saveRestaurant(@ModelAttribute("restaurant") Restaurant restaurant, 
//			BindingResult result,
//			RedirectAttributes ra 
//			
//			) {
//		
//		service.saveRestaurant(restaurant);
//		ra.addFlashAttribute("successMessage", restaurant.getRname() + "新增成功");
//		return "redirect:/restaurant";
//	}
//	
//	@GetMapping(path="/deleteRestaurant/{rid}")
//	public String deleteRestaurant(@PathVariable("id") Integer id, Model model) {
//		Restaurant bean = service.selectRestaurant(id);
////		model.addAttribute("id", id);
//		model.addAttribute("restaurant", bean);
//
//		return "restaurant/entryDelete";
//	}
//
//	@PostMapping(path = "/restaurantList/{id}")
//	public String delete(@PathVariable("rid") Integer rid,RedirectAttributes ra ) {
//		Restaurant restaurant = service.findByRid(rid);
//		service.deleteRestaurant(rid);
//		ra.addFlashAttribute("successMessage", restaurant.getRname() + "刪除成功");
//		return "redirect:/restaurant";
//	}
//	
//	@GetMapping("/updateRestaurant/{rid}")
//	public String sendUpdateRestaurant(@PathVariable("rid") Integer rid,Model model) {
//		
//		Restaurant restaurant = service.findByRid(rid);
//		model.addAttribute("restaurant",restaurant);
//		return "restaurant/restaurantUpdate";
//	}
//	
//	@PostMapping("/updateRestaurant")
//	public String updateRestaurant(@ModelAttribute("restaurant") Restaurant restaurant,RedirectAttributes ra) {
//		
//		service.updateRestaurant(restaurant);
//		ra.addFlashAttribute("successMessage", restaurant.getRname() + "更新成功");
//		return "redirect:/restaurant";
//	}
//	
//	@GetMapping(value="/queryByRname", produces = "application/json; charset=UTF-8")	
//	public @ResponseBody List<Restaurant> queryByRname(
//			@RequestParam("rrname") String rname
//	){
//		
//		System.out.println(rname);
//	 List<Restaurant> restaurant = service.selectByRname(rname);
//		return restaurant;
//	}

	// 查詢單筆AJAX
	@GetMapping(path = "/restaurantSelect.controller/{rid}", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Restaurant read(@PathVariable("rid") Integer rid, Model model) {
		model.addAttribute("rid", rid);

		return service.selectRestaurant(rid);
	}

	// 新增 => (1)送出空白表單 (2)確認新增
	@GetMapping("/restaurantCreate")
	public String main(@ModelAttribute("restaurant") Restaurant restaurant) {
		return "restaurant/restaurantCreate";
	}

	@PostMapping("/restaurantCreate.co")
	public String processInsert(Restaurant restaurant, RedirectAttributes ra) {
		Blob blob = null;
		String mimeType = "";
		String name = "";

		MultipartFile blogImage = restaurant.getBlogImage();

		try {
			InputStream is = blogImage.getInputStream();
			name = blogImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			restaurant.setBlogPhoto(blob);
			restaurant.setMimeType(mimeType);
		} catch (Exception e) {

			e.printStackTrace();
		}
		restaurant.setBlogPhoto(blob);
		service.addRestaurant(restaurant);
		String ext = SystemUtils.getExtFilename(name);

		try {
			File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
			if (!imageFolder.exists())
				// 這邊一定要加s -> mkdirs
				imageFolder.mkdirs();

			File file = new File(imageFolder, "CustomerImage_" + restaurant.getRid() + ext);
			blogImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常:" + e.getMessage());
		}

		ra.addFlashAttribute("successMessage", "新增成功");
		// 路徑要換 要寫的是mapping的路徑 不是jsp的路徑
		return "redirect:/restaurant";
	}

	// 修改
	@GetMapping(path = "/restaurantUpdate/{rid}")
	public String updateSearch(@PathVariable("rid") Integer rid, Model model) {
		Restaurant bean = service.selectRestaurant(rid);
		// model.addAttribute("id", id);
		model.addAttribute("restaurant", bean);

		return "restaurant/restaurantUpdate";
	}

	// 圖片
	@PostMapping(path = "/restaurantUpdate/{rid}")
	public String updateReal(@ModelAttribute("restaurant") Restaurant restaurant, RedirectAttributes ra) {

		Blob blob = null;
		String mimeType = "";
		String name = "";

		MultipartFile blogImage = restaurant.getBlogImage();
		if (blogImage != null & blogImage.getSize() > 0) {
			try {
				InputStream is = blogImage.getInputStream();
				name = blogImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				restaurant.setBlogPhoto(blob);
				restaurant.setMimeType(mimeType);
			} catch (Exception e) {

				e.printStackTrace();
			}

//			restaurantList.setBlogPhoto(blob);
			service.updateRestaurant(restaurant);
			String ext = SystemUtils.getExtFilename(name);

			try {
				File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
				if (!imageFolder.exists())
					// 這邊一定要加s -> mkdirs
					imageFolder.mkdirs();

				File file = new File(imageFolder, "CustomerImage_" + restaurant.getRid() + ext);
				blogImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常:" + e.getMessage());
			}
		}
//			service.updateRestaurant(restaurantList);

		ra.addFlashAttribute("successMessage", "新增成功");
		// 路徑要換 要寫的是mapping的路徑 不是jsp的路徑
		return "redirect:/restaurant";
	}

	// 刪除 => (1)送出空白表單 (2)確認刪除
	@GetMapping(path = "/restaurantDelete/{rid}")
	public String delete(@PathVariable("rid") Integer rid, Model model) {
		Restaurant bean = service.selectRestaurant(rid);
//				model.addAttribute("id", id);
		model.addAttribute("restaurant", bean);

		return "restaurant/restaurantDelete";
	}

	@PostMapping(path = "/restaurant/{rid}")
	public @ResponseBody Map<String, String> deleteEntry(@PathVariable(required = true, value = "rid") Integer rid) {
		Map<String, String> map = new HashMap<>();
		try {
			service.deleteRestaurant(rid);
			map.put("msg", "刪除成功");
			map.put("success", "true");
//					{"msg":"刪除成功", "sucess":"true"}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("msg", "刪除失敗");
			map.put("success", "false");
			System.out.println("刪除失敗");
		}
		return map;
	}

	// 模查
	@GetMapping(value = "/queryByRTitle", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Restaurant> queryByRTitle(@RequestParam("userQueryString") String queryString) {
		// System.out.println("rname=" + rname);

		System.out.println(queryString);
		List<Restaurant> entry = service.selectByRTitle(queryString);
		return entry;
	}

}

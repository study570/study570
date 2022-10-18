package com.group2.springboot.restaurant.model;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group2.springboot.coupon.model.Coupon;
import com.group2.springboot.shopreview.model.ArticleList;

//@Service("restaurantService")

@Service
@Transactional
public class RestaurantService {
	@Autowired
	private RestaurantDao restaurantDao;

	public List<Restaurant> selectAll() {
		return restaurantDao.selectAll();
	}

//	public List<Restaurant> selectByRname(String rname) {
//		return restaurantDao.queryByRname(rname);
//	}

	public Restaurant findByRid(Integer rid) {
		return restaurantDao.findByRid(rid);
	}

	public void saveRestaurant(Restaurant restaurant) {
		restaurantDao.saveRestaurant(restaurant);
	}

//	文章 查詢
	public Restaurant selectRestaurant(Integer restaurantId) {
		return restaurantDao.selectRestaurant(restaurantId);
	}

//	文章 新增
	public void addRestaurant(Restaurant restaurantBean) {
		restaurantDao.addRestaurant(restaurantBean);
	}

//	優惠
//	public void deleteRestaurant(Integer rid) {
//		restaurantDao.deleteRestaurant(rid);
//		
//	}

	// 文章 刪除
	public boolean deleteRestaurant(Integer restaurantId) {
		restaurantDao.deleteRestaurant(restaurantId);
		return false;
	}

//	優惠
//	public void updateRestaurant(Restaurant restaurant) {
//		restaurantDao.updateRestaurant(restaurant);
//	}

//	文章 更新
	public void updateRestaurant(Restaurant restaurantBean) {
		restaurantDao.updateRestaurant(restaurantBean);
	}

	// 文章 模查 XXX rname
	public List<Restaurant> selectByRTitle(String name) {
		return restaurantDao.queryByRTitle(name);
	}
}

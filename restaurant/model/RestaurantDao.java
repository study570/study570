package com.group2.springboot.restaurant.model;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.group2.springboot.coupon.model.Coupon;
import com.group2.springboot.restaurant.model.Restaurant;
import com.group2.springboot.shopreview.model.ArticleList;

@Repository("restaurantDao")
public class RestaurantDao {

	@Autowired
	EntityManager em;

//	@Autowired @Qualifier("sessionFactory")
//
//	private SessionFactory sessionFactory;
//	
//	public RestaurantDao() {
//	}
//	
//	public RestaurantDao(SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//	}
//	
//
//	
//	public List<Restaurant> selectAll() {
//		Session session = sessionFactory.getCurrentSession();
//		Query<Restaurant> query = session.createQuery("From Restaurant", Restaurant.class);
//		return query.list();
//	}

	@SuppressWarnings("unchecked")
//	@Override
	public List<Restaurant> selectAll() {

		String hql = "From Restaurant";

		List<Restaurant> list = em.createQuery(hql).getResultList();

		return list;
	}

	public Restaurant findByRid(Integer rid) {
		return em.find(Restaurant.class, rid);
	}

	public void saveRestaurant(Restaurant restaurant) {
		em.persist(restaurant);
	}

	public Restaurant selectRestaurant(Integer restaurantId) {
		return em.find(Restaurant.class, restaurantId);
	}

//	文章
	public void addRestaurant(Restaurant restaurantBean) {
		em.persist(restaurantBean);
	}

//	優惠
//	public void deleteRestaurant(Integer rid) {
//		Restaurant restaurant = em.find(Restaurant.class, rid);
//		em.remove(restaurant);
//	}

//	文章
	public boolean deleteRestaurant(Integer restaurantid) {
		Restaurant bean = em.find(Restaurant.class, restaurantid);
		em.remove(bean);
		return false;
	}

//	優惠
//		public void updateRestaurant(Restaurant restaurant) {
//		em.merge(restaurant);
//	}

//		文章
	public void updateRestaurant(Restaurant restaurantBean) {
		em.merge(restaurantBean);
	}

//	優惠
//	public List<Restaurant> queryByRname(String rname){
//		String hql = "FROM Restaurant r WHERE r.rname like :rname ";
//		List<Restaurant> list = em.createQuery(hql,Restaurant.class).setParameter("rname", "%"+rname+"%").getResultList();
//		return list;
//	}

	// 文章 模查
	public List<Restaurant> queryByRTitle(String queryString) {
		String hql = "FROM Restaurant a WHERE a.rname like :queryString";
		// String hql = "FROM RestaurantList a WHERE a.reviewtitle like :queryString";
		// 可能錯誤
		List<Restaurant> list = em.createQuery(hql, Restaurant.class)
				.setParameter("queryString", "%" + queryString + "%").getResultList();
		return list;
	}

}

package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDao;
import com.niit.model.Cart;

@Repository
public class CartDaoImpl implements CartDao
{

	@Autowired
	SessionFactory sessionFactory;

	public CartDaoImpl(SessionFactory sessionFactory) {
	
		this.sessionFactory = sessionFactory;
	}

	

	@Transactional
	
	public boolean saveProductToCart(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}

	
	
	
	
	
	
	
	@Transactional
	public Cart getitem(int prodId, int userId)
	{
		String hql = "from"+" Cart"+" where userid="+userId+" and productid="+prodId;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list!= null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> listCart() 
	{
		
		List<Cart> cartList= sessionFactory.getCurrentSession().createQuery("from Cart").list();
		return cartList;
	}
	
	
	
	
	
	@Transactional
	public boolean removeCartById(int cart_id)
{
	 
	Cart c=new Cart();
	c.setCartId(cart_id);
	sessionFactory.getCurrentSession().delete(c);
		
		
		return true;
		
	}






	@SuppressWarnings("deprecation")
	@Transactional
	public long cartsize(int userId) 
{
	Criteria c=sessionFactory.getCurrentSession().createCriteria(Cart.class);
	c.add(Restrictions.eq("userId", userId));
//	c.add(Restrictions.eq("status","C"));
	c.setProjection(Projections.count("userId"));
	long count= (Long) c.uniqueResult();
	return count;
}







	@Transactional
	public Cart editCartById1(int cart_id) {
	
		Cart cart=	sessionFactory.getCurrentSession().get(Cart.class,cart_id);
	
	return cart;
}





	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Transactional
	public Cart getCartById(int cart_id) {
	String hql = "from"+" Cart"+" where id=" + cart_id;

	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	

	List<Cart> listCart = (List<Cart>) query.list();
	
	if (listCart != null && !listCart.isEmpty()) {
		return listCart.get(0);
	}
	
	return null;
}




	
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Cart> listCartbyUserId(int userId) {
			String hql = "from"+" Cart"+" where userId=" + userId;

			List<Cart> lCart = sessionFactory.getCurrentSession().createQuery(hql).list();
			return lCart;
	
	}






	@Transactional
	
	public double CartPrice(int userId) {
	Criteria c=sessionFactory.getCurrentSession().createCriteria(Cart.class);
	c.add(Restrictions.eq("userId", userId));
	//c.add(Restrictions.eq("status","C"));
	c.setProjection(Projections.sum("subTotal"));
	double l= (Double) c.uniqueResult();
	return l;
	}



	/*public Cart editCartById(int cart_id) {
		// TODO Auto-generated method stub
		return null;*/
	}



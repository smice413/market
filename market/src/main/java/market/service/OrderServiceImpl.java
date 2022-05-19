package market.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import market.dao.OrderDAO;
import market.model.CartDTO;
import market.model.DeliveryDTO;

@Service
public class OrderServiceImpl implements OrdereService{

	@Autowired
	private OrderDAO od;

	@Override
	public List<CartDTO> getCartInfo(String m_email) {
		return od.getCartInfo(m_email);
	}

	@Override
	public DeliveryDTO getDeliveryInfo(String m_email) {
		System.out.println("OrderServiceImpl");
		return od.getDeliveryInfo(m_email);
	}
	
}
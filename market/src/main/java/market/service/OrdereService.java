package market.service;

import java.util.List;

import market.model.CartDTO;
import market.model.DeliveryDTO;

public interface OrdereService {
	List<CartDTO> getCartInfo(String m_email);
	DeliveryDTO getDeliveryInfo(String m_email);
	int getAddressCount(String m_email);
	int deliveryInsertY(DeliveryDTO delivery);
	int deliveryInsertN(DeliveryDTO delivery);
}

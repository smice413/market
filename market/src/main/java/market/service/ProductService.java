package market.service;

import java.util.List;

import market.model.CategoryDTO;
import market.model.ProductDTO;
import market.model.Product_imgDTO;
import market.model.ShopDTO;


public interface ProductService {

	List<ProductDTO> list(ProductDTO product);
	
	int getTotal(ProductDTO product);
	
	int insert(ProductDTO product);
	
	ProductDTO select(int p_no);
	
	void selectUpdate(int p_no);
	
	int update(ProductDTO product);
	
	int delete(int p_no);
	
	int getMaxNum();

	List<CategoryDTO> listCategory(ProductDTO product);
	
	List<CategoryDTO> listCateNo();

	int insertImg(Product_imgDTO product_img);
	
	List<Product_imgDTO> listImg(int p_no);
	
	ShopDTO getShopInfo(ProductDTO product);
}

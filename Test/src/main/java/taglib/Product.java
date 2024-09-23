package taglib;

/**
 * File : Product.java
 * Desc : 제품 빈즈 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Product {

	private ProductData data = new ProductData(new String[] {"item1","item2","item3","item4","item5"}, 10, 20);

	public int getNum1() {
		return data.num1;
	}

	public int getNum2() {
		return data.num2;
	}

	public String[] getProductList() {
		return data.productList;
	}
}
package com.dwr.DWRTest04;

public class Add {
	public int add(int a , int b){
		return a+b;
	}
	
	public ResultBean addWithBean(int a , int b){
		ResultBean resultBean = new ResultBean();
		resultBean.setResult(a+b);
		return resultBean;
	}
}

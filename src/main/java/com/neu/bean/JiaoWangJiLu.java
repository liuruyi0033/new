package com.neu.bean;

public class JiaoWangJiLu {
	private Integer id;
	private String kehubianhao;
	private String shijian;
	private String didian;
	private String gaiyao;
	private String beizhu;
	private String xiangxixinxi;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKehubianhao() {
		return kehubianhao;
	}
	public void setKehubianhao(String kehubianhao) {
		this.kehubianhao = kehubianhao;
	}
	public String getShijian() {
		return shijian;
	}
	public void setShijian(String shijian) {
		this.shijian = shijian;
	}
	public String getDidian() {
		return didian;
	}
	public void setDidian(String didian) {
		this.didian = didian;
	}
	public String getGaiyao() {
		return gaiyao;
	}
	public void setGaiyao(String gaiyao) {
		this.gaiyao = gaiyao;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getXiangxixinxi() {
		return xiangxixinxi;
	}
	public void setXiangxixinxi(String xiangxixinxi) {
		this.xiangxixinxi = xiangxixinxi;
	}
	@Override
	public String toString() {
		return "JiaoWangJiLu [kehubianhao=" + kehubianhao + ", shijian=" + shijian + ", didian=" + didian + ", gaiyao="
				+ gaiyao + ", beizhu=" + beizhu + ", xiangxixinxi=" + xiangxixinxi + "]";
	}
	
}

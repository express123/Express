package com.zhbit.expressompany.service;

import com.zhbit.expresscompany.domain.USenders;


public interface USendersSerive {
	USenders add(USenders usender);
	void removeUsender(int usid);
	USenders getUsender(int usid);
}

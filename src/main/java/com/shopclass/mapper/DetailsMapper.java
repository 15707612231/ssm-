package com.shopclass.mapper;

import com.shopclass.VO.DetailsVO;
import com.shopclass.entity.Details;

public interface DetailsMapper {
    DetailsVO findDescription(Integer id);
}

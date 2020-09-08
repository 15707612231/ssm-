package com.shopclass.service.Impl;

import com.shopclass.VO.DetailsVO;
import com.shopclass.entity.Details;
import com.shopclass.mapper.DetailsMapper;
import com.shopclass.service.DetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl implements DetailsService {
    @Autowired
    private DetailsMapper detailsMapper;

    @Override
    public DetailsVO findDescription(Integer id) {
        return detailsMapper.findDescription(id);
    }
}

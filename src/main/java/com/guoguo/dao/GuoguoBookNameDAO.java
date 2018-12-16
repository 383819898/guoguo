package com.guoguo.dao;

import com.guoguo.entity.GuoguoBookName;
import org.springframework.stereotype.Repository;

/**
 * GuoguoBookNameDAO继承基类
 */
@Repository
public interface GuoguoBookNameDAO extends MyBatisBaseDao<GuoguoBookName, Integer> {
}
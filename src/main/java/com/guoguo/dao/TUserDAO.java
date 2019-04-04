package com.guoguo.dao;

import com.guoguo.entity.TUser;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * TUserDAO继承基类
 */
@Repository
public interface TUserDAO extends MyBatisBaseDao<TUser, Integer> {

    TUser login(TUser user);
    List<TUser> selectAll(TUser user);

}
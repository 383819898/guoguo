package com.guoguo.dao;

import com.guoguo.entity.GuoguoChapter;
import org.springframework.stereotype.Repository;

/**
 * GuoguoChapterDAO继承基类
 */
@Repository
public interface GuoguoChapterDAO extends MyBatisBaseDao<GuoguoChapter, Integer> {
}
package com.guoguo.dao;

import com.guoguo.entity.Book;
import org.springframework.stereotype.Repository;

/**
 * BookDAO继承基类
 */
@Repository
public interface BookDAO extends MyBatisBaseDao<Book, Long> {
}
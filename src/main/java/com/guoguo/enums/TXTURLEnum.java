package com.guoguo.enums;

public enum TXTURLEnum {

    kuaiyankanshu("https://www.kuaiyankanshu.net/search/result.html?searchtype=novelname&searchkey=", 1);

    private String name;
    private int index;

    TXTURLEnum(String name, int index) {
        this.name = name;
        this.index = index;
    }
}

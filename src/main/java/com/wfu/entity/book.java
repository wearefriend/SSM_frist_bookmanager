package com.wfu.entity;

public class book {
    String name;
    String num;

    public book() {
    }

    @Override
    public String toString() {
        return "book{" +
                "name='" + name + '\'' +
                ", num='" + num + '\'' +
                '}';
    }

    public book(String name, String num) {
        this.name = name;
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
}

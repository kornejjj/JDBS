package com.example;

public class LongestProject {
    private int id;
    private int monthCount;

    public LongestProject(int id, int monthCount) {
        this.id = id;
        this.monthCount = monthCount;
    }

    public int getId() {
        return id;
    }

    public int getMonthCount() {
        return monthCount;
    }

    @Override
    public String toString() {
        return "Project ID: " + id + ", Month Count: " + monthCount;
    }
}

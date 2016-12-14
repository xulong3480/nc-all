package com.nc.model.demand;

public class BillDemand extends Demand {

    private Object data;

    public BillDemand() {

    }

    public BillDemand(Object bill) {
        this.data = bill;
    }

    public void put(Object bill) {
        this.data = bill;
    }

    public Object getData() {
        return data;
    }

    public void setData(BillModel data) {
        this.data = data;
    }
}
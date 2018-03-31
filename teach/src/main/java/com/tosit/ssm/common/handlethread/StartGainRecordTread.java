package com.tosit.ssm.common.handlethread;

import java.util.*;

public class StartGainRecordTread {


    public static void main(String[] args) {
        GainRecordThread.getInstance().startTiming(1000);
    }
}

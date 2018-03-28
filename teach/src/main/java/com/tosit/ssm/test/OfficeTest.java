package com.tosit.ssm.test;

import com.google.common.collect.Lists;
import com.tosit.ssm.common.util.excel.ExportExcel;
import org.apache.poi.ss.usermodel.Row;
import org.junit.jupiter.api.Test;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

public class OfficeTest {
    public static void main(String[] args) {

    }

    @Test
    public void testt() {
        try {
            List<String> headerList = Lists.newArrayList();
            for (int i = 1; i <= 10; i++) {
                headerList.add("表头" + i);
            }

            List<String> dataRowList = Lists.newArrayList();
            for (int i = 1; i <= headerList.size(); i++) {
                dataRowList.add("数据" + i);
            }

            List<List<String>> dataList = Lists.newArrayList();
            for (int i = 1; i <= 100; i++) {
                dataList.add(dataRowList);
            }

            ExportExcel ee = new ExportExcel("表格标题", headerList);

            for (int i = 0; i < dataList.size(); i++) {
                Row row = ee.addRow();
                for (int j = 0; j < dataList.get(i).size(); j++) {
                    ee.addCell(row, j, dataList.get(i).get(j));
                }
            }
//		new File("C:\\Users\\1234\\Desktop", "fi.xlsx");
            ee.writeFile("C:\\Users\\1234\\Desktop\\fi.xlsx");

            ee.dispose();

//			log.debug("Export success.");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}

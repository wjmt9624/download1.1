package com.mt.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/**
 * @author 若风
 * @version 1.0
 */
public class DownloadAction extends ActionSupport {

    private String fileName;
    private String downloadPath;
    private String contentType;

    private String cust_message;

    public String getFileName() {
        return fileName;
    }

    public String getDownloadPath() {
        return downloadPath;
    }

    public void setDownloadPath(String downloadPath) {
        this.downloadPath = downloadPath;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String download() throws FileNotFoundException {
        downloadPath = ServletActionContext.getRequest().getParameter("download");
        int position = downloadPath.lastIndexOf("/");
        if (position > 0) {
                fileName = downloadPath.substring(position + 1);
                System.out.println(fileName);
            } else {
                fileName = downloadPath;
            }
        contentType = "application/zip";
        return SUCCESS;
    }

    public InputStream getInputStream() {
        InputStream inputStream = ServletActionContext.getServletContext().getResourceAsStream(downloadPath);
        return inputStream;
    }
}

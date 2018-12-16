package com.guoguo.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * guoguo_book_name
 * @author 
 */
public class GuoguoBookName implements Serializable {
    private Integer id;

    private String guoguoName;

    private String guoguoAuthor;

    private Integer guoguoReadingnumber;

    private Integer guoguoPraisepointsnumber;

    private Integer guoguoCollectionnumber;

    private String guoguoChapter;

    private Date guoguoTime;

    private Date guoguoUpdate;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGuoguoName() {
        return guoguoName;
    }

    public void setGuoguoName(String guoguoName) {
        this.guoguoName = guoguoName;
    }

    public String getGuoguoAuthor() {
        return guoguoAuthor;
    }

    public void setGuoguoAuthor(String guoguoAuthor) {
        this.guoguoAuthor = guoguoAuthor;
    }

    public Integer getGuoguoReadingnumber() {
        return guoguoReadingnumber;
    }

    public void setGuoguoReadingnumber(Integer guoguoReadingnumber) {
        this.guoguoReadingnumber = guoguoReadingnumber;
    }

    public Integer getGuoguoPraisepointsnumber() {
        return guoguoPraisepointsnumber;
    }

    public void setGuoguoPraisepointsnumber(Integer guoguoPraisepointsnumber) {
        this.guoguoPraisepointsnumber = guoguoPraisepointsnumber;
    }

    public Integer getGuoguoCollectionnumber() {
        return guoguoCollectionnumber;
    }

    public void setGuoguoCollectionnumber(Integer guoguoCollectionnumber) {
        this.guoguoCollectionnumber = guoguoCollectionnumber;
    }

    public String getGuoguoChapter() {
        return guoguoChapter;
    }

    public void setGuoguoChapter(String guoguoChapter) {
        this.guoguoChapter = guoguoChapter;
    }

    public Date getGuoguoTime() {
        return guoguoTime;
    }

    public void setGuoguoTime(Date guoguoTime) {
        this.guoguoTime = guoguoTime;
    }

    public Date getGuoguoUpdate() {
        return guoguoUpdate;
    }

    public void setGuoguoUpdate(Date guoguoUpdate) {
        this.guoguoUpdate = guoguoUpdate;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        GuoguoBookName other = (GuoguoBookName) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getGuoguoName() == null ? other.getGuoguoName() == null : this.getGuoguoName().equals(other.getGuoguoName()))
            && (this.getGuoguoAuthor() == null ? other.getGuoguoAuthor() == null : this.getGuoguoAuthor().equals(other.getGuoguoAuthor()))
            && (this.getGuoguoReadingnumber() == null ? other.getGuoguoReadingnumber() == null : this.getGuoguoReadingnumber().equals(other.getGuoguoReadingnumber()))
            && (this.getGuoguoPraisepointsnumber() == null ? other.getGuoguoPraisepointsnumber() == null : this.getGuoguoPraisepointsnumber().equals(other.getGuoguoPraisepointsnumber()))
            && (this.getGuoguoCollectionnumber() == null ? other.getGuoguoCollectionnumber() == null : this.getGuoguoCollectionnumber().equals(other.getGuoguoCollectionnumber()))
            && (this.getGuoguoChapter() == null ? other.getGuoguoChapter() == null : this.getGuoguoChapter().equals(other.getGuoguoChapter()))
            && (this.getGuoguoTime() == null ? other.getGuoguoTime() == null : this.getGuoguoTime().equals(other.getGuoguoTime()))
            && (this.getGuoguoUpdate() == null ? other.getGuoguoUpdate() == null : this.getGuoguoUpdate().equals(other.getGuoguoUpdate()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getGuoguoName() == null) ? 0 : getGuoguoName().hashCode());
        result = prime * result + ((getGuoguoAuthor() == null) ? 0 : getGuoguoAuthor().hashCode());
        result = prime * result + ((getGuoguoReadingnumber() == null) ? 0 : getGuoguoReadingnumber().hashCode());
        result = prime * result + ((getGuoguoPraisepointsnumber() == null) ? 0 : getGuoguoPraisepointsnumber().hashCode());
        result = prime * result + ((getGuoguoCollectionnumber() == null) ? 0 : getGuoguoCollectionnumber().hashCode());
        result = prime * result + ((getGuoguoChapter() == null) ? 0 : getGuoguoChapter().hashCode());
        result = prime * result + ((getGuoguoTime() == null) ? 0 : getGuoguoTime().hashCode());
        result = prime * result + ((getGuoguoUpdate() == null) ? 0 : getGuoguoUpdate().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", guoguoName=").append(guoguoName);
        sb.append(", guoguoAuthor=").append(guoguoAuthor);
        sb.append(", guoguoReadingnumber=").append(guoguoReadingnumber);
        sb.append(", guoguoPraisepointsnumber=").append(guoguoPraisepointsnumber);
        sb.append(", guoguoCollectionnumber=").append(guoguoCollectionnumber);
        sb.append(", guoguoChapter=").append(guoguoChapter);
        sb.append(", guoguoTime=").append(guoguoTime);
        sb.append(", guoguoUpdate=").append(guoguoUpdate);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
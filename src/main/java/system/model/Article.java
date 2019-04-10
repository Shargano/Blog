package system.model;


import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;

@Entity
public class Article implements Serializable, Comparable<Article> {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Введите заголовок")
    private String title;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    @NotBlank(message = "Введите текст статьи")
    private String content;

    @Lob
    private byte[] pic;

    private long timeStamp;

    private Date date;

    private String authorName;

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public Article() {}

    public Article(String title, String authorName, String content, byte[] pic) {
        this.title = title;
        this.authorName = authorName;
        this.content = content;
        this.pic = pic;
        this.timeStamp = System.currentTimeMillis();
        this.date = new Date(System.currentTimeMillis());
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    public String generateBase64Image()
    {
        return Base64.encodeBase64String(this.getPic());
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = new Date(date);
    }

    @Override
    public int compareTo(Article o) {
        return Long.compare(this.timeStamp, o.timeStamp);
    }

}
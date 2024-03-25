package user.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
public class UserImageDTO {
    private int seq;
    private String imageName;
    private String imageContent;
    private String image1;
}

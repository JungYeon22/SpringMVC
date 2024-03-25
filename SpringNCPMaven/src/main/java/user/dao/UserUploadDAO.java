package user.dao;

import user.bean.UserImageDTO;

import java.util.List;

public interface UserUploadDAO {
    void upload(UserImageDTO userImageDTO, List<String> fileNameList);

    List<UserImageDTO> getUploadList();
}

package user.service;

import user.bean.UserImageDTO;

import java.util.List;

public interface UserUploadService {
    void upload(UserImageDTO userImageDTO, List<String> fileNameList);

    List<UserImageDTO> getUploadList();
}

package user.service;

import user.bean.UserImageDTO;

import java.util.List;

public interface UserUploadService {

    List<UserImageDTO> getUploadList();

    void upload(List<UserImageDTO> userImageList);

    UserImageDTO getUpload(int seq);

    void uploadUpdate(List<UserImageDTO> userImageList);

    void uploadDelete(int seq);
}

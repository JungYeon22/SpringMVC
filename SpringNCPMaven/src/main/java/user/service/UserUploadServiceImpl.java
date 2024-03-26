package user.service;

import user.bean.UserImageDTO;
import user.dao.UserUploadDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserUploadServiceImpl implements UserUploadService{
    @Autowired
    private UserUploadDAO userUploadDAO;
    @Override
    public void upload(List<UserImageDTO> userImageList) {
        for(UserImageDTO userImageDTO : userImageList){
            userUploadDAO.upload(userImageDTO);
        }
    }

    @Override
    public UserImageDTO getUpload(int seq) {
        UserImageDTO upload = userUploadDAO.getUpload(seq);
        System.out.println(upload.toString());
        return upload;
    }

    @Override
    public void uploadUpdate(List<UserImageDTO> userImageList) {
        for(UserImageDTO userImageDTO : userImageList){
            userUploadDAO.uploadUpdate(userImageDTO);
        }

    }

    @Override
    public void uploadDelete(int seq) {
        System.out.println("upload delete service");
        userUploadDAO.uploadDelete(seq);
    }

/*  @Override
    public void upload(List<UserImageDTO> userImageList) {
        userUploadDAO.upload(userImageList);
    }*/

    @Override
    public List<UserImageDTO> getUploadList() {
        return userUploadDAO.getUploadList();
    }




}

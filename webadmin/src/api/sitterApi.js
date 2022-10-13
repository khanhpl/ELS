import axiosClient from "./axiosClient";

const sitterApi = {
    getAll: (params) => {
        const url = '/sitter';
        return axiosClient.get(url, { params });
    }
}

// class SitterApi {
//     async getAllSitter() {
//         const url = '/sitter';
//         return await axiosClient.get(url);
//     }
// }
// const sitterAPI = new SitterApi();

export default sitterApi

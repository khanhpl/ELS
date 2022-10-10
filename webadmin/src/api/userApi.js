import axiosClient from "./axiosClient";

const userApi = {
    login(data) {
        const url = '/auth';
        return axiosClient.post(url, data);
    },
}

export default userApi

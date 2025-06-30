import axios, { AxiosInstance } from 'axios';
// import { ENV } from '@/config/enviroments';


export const ADM_URL = axios.create({
    baseURL: "https://admission-api.shokan.edu.kz",
});
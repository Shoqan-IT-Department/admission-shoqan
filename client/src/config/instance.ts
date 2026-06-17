import axios from "axios";
// import { ENV } from '@/config/enviroments';

export const ADM_URL = axios.create({
  baseURL: "https://admission-api.shokan.edu.kz/api/",
});

export const Program = axios.create({
  baseURL: "https://shokan.edu.kz/api/v2/",
});
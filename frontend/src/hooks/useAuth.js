import { useContext } from "react";
import { AuthContext } from "../context/index";

export default function useAuth() {
  return useContext(AuthContext);
}


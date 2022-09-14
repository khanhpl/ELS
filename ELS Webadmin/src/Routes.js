import React from "react";
import TlchChitit from "pages/TlchChitit";
import Tlch from "pages/Tlch";
import KhachHangChitit from "pages/KhachHangChitit";
import Khachhang from "pages/Khachhang";
import Citchungtab1 from "pages/Citchungtab1";
import NngkChitit from "pages/NngkChitit";
import Nngk from "pages/Nngk";
import NhnvinChitit from "pages/NhnvinChitit";
import Nhnvin from "pages/Nhnvin";
import Dichvu from "pages/Dichvu";
import Tngquan from "pages/Tngquan";
import Ngnhpadmin from "pages/Ngnhpadmin";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "pages/Home";
import NotFound from "pages/NotFound";

const ProjectRoutes = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="*" element={<NotFound />} />
        <Route path="/ngnhpadmin" element={<Ngnhpadmin />} />
        <Route path="/tngquan" element={<Tngquan />} />
        <Route path="/dichvu" element={<Dichvu />} />
        <Route path="/nhnvin" element={<Nhnvin />} />
        <Route path="/nhnvinchitit" element={<NhnvinChitit />} />
        <Route path="/nngk" element={<Nngk />} />
        <Route path="/nngkchitit" element={<NngkChitit />} />
        <Route path="/citchungtab1" element={<Citchungtab1 />} />
        <Route path="/khachhang" element={<Khachhang />} />
        <Route path="/khachhangchitit" element={<KhachHangChitit />} />
        <Route path="/tlch" element={<Tlch />} />
        <Route path="/tlchchitit" element={<TlchChitit />} />
      </Routes>
    </Router>
  );
};

export default ProjectRoutes;

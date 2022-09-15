import React from "react";
import PropTypes from 'prop-types';
import Tabs from '@mui/material/Tabs';
import Tab from '@mui/material/Tab';
import Typography from '@mui/material/Typography';
import Box from '@mui/material/Box';
import BusinessCenterIcon from '@mui/icons-material/BusinessCenter';
import SignalCellularAltIcon from '@mui/icons-material/SignalCellularAlt';
import PersonIcon from '@mui/icons-material/Person';
import Face4Icon from '@mui/icons-material/Face4';
import SettingsIcon from '@mui/icons-material/Settings';
import AssignmentIcon from '@mui/icons-material/Assignment';
import EventNoteIcon from '@mui/icons-material/EventNote';
import {
  Column,
  Row,
  Img,
  Text,
  List,
  Line,
  Stack,
  SelectBox,
  Button,
} from "components";
import { CircularProgressbar } from "react-circular-progressbar";
import "react-circular-progressbar/dist/styles.css";

function TabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`vertical-tabpanel-${index}`}
      aria-labelledby={`vertical-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  );
}

TabPanel.propTypes = {
  children: PropTypes.node,
  index: PropTypes.number.isRequired,
  value: PropTypes.number.isRequired,
};

function a11yProps(index) {
  return {
    id: `vertical-tab-${index}`,
    'aria-controls': `vertical-tabpanel-${index}`,
  };
}

const TngquanPage = () => {
  const [value, setValue] = React.useState(0);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };
  return (
    <>
      <Column className="bg-white_A700 font-poppins items-center justify-end mx-[auto] lg:pt-[17px] xl:pt-[20px] 2xl:pt-[23px] 3xl:pt-[27px] lg:px-[17px] xl:px-[20px] 2xl:px-[23px] 3xl:px-[27px] shadow-bs3 w-[100%]">
        <Row className="lg:mt-[10px] xl:mt-[12px] 2xl:mt-[14px] 3xl:mt-[16px] w-[98%]">
          <aside className="w-[22%]">
            <Column className="">
              <Row className="w-[87%]">
                <Column className="w-[98%]">
                  <Row className="items-end w-[58%]">
                    <Img
                      src="images/img_location.svg"
                      className="lg:h-[25px] xl:h-[29px] 2xl:h-[33px] 3xl:h-[39px] w-[19%]"
                      alt="location"
                    />
                    <Text className="font-medium ml-[1px] lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 tracking-ls1 w-[auto]">
                      ElderlySitter
                    </Text>
                  </Row>
                  
                    <Tabs
                      orientation="vertical"
                      variant="scrollable"
                      value={value}
                      onChange={handleChange}
                      aria-label="Vertical tabs example"
                      sx={{ borderRight: 1, borderColor: 'divider' }}
                    >
                      <Tab icon={<SignalCellularAltIcon />} iconPosition="start" label="Tổng quan" {...a11yProps(0)} />
                      <Tab icon={<BusinessCenterIcon />} iconPosition="start" label="Dịch vụ" {...a11yProps(1)} />
                      <Tab icon={<Face4Icon />} iconPosition="start" label="Chăm sóc viên" {...a11yProps(2)} />
                      <Tab icon={<PersonIcon />} iconPosition="start" label="Khách hàng" {...a11yProps(3)} />
                      <Tab icon={<AssignmentIcon />} iconPosition="start" label="Đơn đăng ký" {...a11yProps(4)} />
                      <Tab icon={<EventNoteIcon />} iconPosition="start" label="Quản lý booking" {...a11yProps(5)} />
                      <Tab icon={<SettingsIcon />} iconPosition="start" label="Cài đặt" {...a11yProps(6)} />
                    </Tabs>
                  
                </Column>
              </Row>
            </Column>
          </aside>
          <Column className="items-center mt-[2px] w-[78%]">
            <Row className="lg:pr-[4px] xl:pr-[5px] 2xl:pr-[6px] 3xl:pr-[7px] w-[100%]">
              <Column className="lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] w-[71%]">
                <Text className="font-medium lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                  <span className="text-black_900 font-poppins">
                    Chào mừng đã trở lại,{" "}
                  </span>
                  <span className="text-black_900 font-poppins">
                    Phan Lưu Khánh
                  </span>
                </Text>
                <Text className="font-normal xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Đây là thông tin về tất cả các đơn đặt hàng của bạn
                </Text>
              </Column>
              <Img
                src="images/img_search.svg"
                className="lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px] lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] lg:w-[14px] xl:w-[16px] 2xl:w-[19px] 3xl:w-[22px]"
                alt="search"
              />
              <Stack className="lg:h-[17px] xl:h-[19px] 2xl:h-[22px] 3xl:h-[26px] lg:ml-[22px] xl:ml-[25px] 2xl:ml-[29px] 3xl:ml-[34px] mt-[4px] w-[2%]">
                <Img
                  src="images/img_volume.svg"
                  className="absolute bottom-[0] lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px] left-[0] w-[85%]"
                  alt="volume"
                />
                <div className="absolute bg-red_500 xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] right-[0] rounded-radius50 top-[0] xl:w-[3px] lg:w-[3px] 3xl:w-[4px] 2xl:w-[4px]"></div>
              </Stack>
              <Img
                src="images/img_avatar.png"
                className="lg:h-[25px] xl:h-[29px] 2xl:h-[33px] 3xl:h-[39px] lg:ml-[24px] xl:ml-[28px] 2xl:ml-[32px] 3xl:ml-[38px] rounded-radius50 lg:w-[24px] xl:w-[28px] 2xl:w-[32px] 3xl:w-[38px]"
                alt="avatar"
              />
              <SelectBox
                className="font-normal xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[15%]"
                placeholderClassName="text-black_900"
                name="text"
                placeholder="Phan Lưu Khánh"
                isSearchable={false}
                isMulti={false}
                indicator={
                  <Img
                    src="images/img_arrowdown.svg"
                    className="mr-[0] lg:w-[8px] lg:h-[5px] xl:w-[9px] xl:h-[6px] 2xl:w-[11px] 2xl:h-[7px] 3xl:w-[13px] 3xl:h-[8px]"
                    alt="arrow_down"
                  />
                }
              ></SelectBox>
            </Row>
            <List
              className="bg-white_A700 border border-blue_50 border-solid lg:gap-[29px] xl:gap-[33px] 2xl:gap-[38px] 3xl:gap-[45px] grid grid-cols-[repeat(3,_1fr_1px)_1fr] min-h-[auto] lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] lg:p-[15px] xl:p-[17px] 2xl:p-[20px] 3xl:p-[24px] rounded-radius12 w-[100%]"
              orientation="horizontal"
            >
              <Column className="my-[1px] w-[100%]">
                <Stack className="lg:h-[52px] xl:h-[59px] 2xl:h-[67px] 3xl:h-[80px] w-[100%]">
                  <Column className="absolute bottom-[0] left-[0] w-[80%]">
                    <Text className="font-semibold lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                      100
                    </Text>
                    <Text className="font-normal 2xl:mt-[11px] 3xl:mt-[13px] lg:mt-[8px] xl:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                      Tổng số người dùng
                    </Text>
                  </Column>
                  <Button
                    className="absolute flex lg:h-[35px] xl:h-[40px] 2xl:h-[45px] 3xl:h-[53px] items-center justify-center right-[0] top-[0] lg:w-[34px] xl:w-[39px] 2xl:w-[44px] 3xl:w-[52px]"
                    shape="icbRoundedBorder12"
                  >
                    <Img
                      src="images/img_file.svg"
                      className="flex items-center justify-center"
                      alt="file"
                    />
                  </Button>
                </Stack>
                <Row className="xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] pl-[1px] pt-[1px] w-[86%]">
                  <Img
                    src="images/img_shape_green_500.svg"
                    className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] my-[1px] lg:w-[14px] xl:w-[16px] 2xl:w-[18px] 3xl:w-[21px]"
                    alt="shape Two"
                  />
                  <Text className="font-normal 3xl:ml-[10px] lg:ml-[7px] xl:ml-[8px] 2xl:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    10.2
                  </Text>
                  <Text className="font-normal xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    +1.01% tuần này
                  </Text>
                </Row>
              </Column>
              <Line className="self-center w-[1px] bg-blue_50 lg:h-[80px] xl:h-[91px] 2xl:h-[103px] 3xl:h-[123px]" />
              <Column className="my-[1px] w-[100%]">
                <Stack className="lg:h-[52px] xl:h-[59px] 2xl:h-[67px] 3xl:h-[80px] w-[100%]">
                  <Column className="absolute bottom-[0] left-[0] w-[80%]">
                    <Text className="font-semibold lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                      30
                    </Text>
                    <Text className="font-normal 2xl:mt-[11px] 3xl:mt-[13px] lg:mt-[8px] xl:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                      Tổng số các dịch vụ{" "}
                    </Text>
                  </Column>
                  <Button
                    className="absolute flex lg:h-[35px] xl:h-[40px] 2xl:h-[45px] 3xl:h-[53px] items-center justify-center right-[0] top-[0] lg:w-[34px] xl:w-[39px] 2xl:w-[44px] 3xl:w-[52px]"
                    shape="icbRoundedBorder12"
                  >
                    <Img
                      src="images/img_clock.svg"
                      className="flex items-center justify-center"
                      alt="clock"
                    />
                  </Button>
                </Stack>
                <Row className="xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] pl-[1px] pt-[1px] w-[85%]">
                  <Img
                    src="images/img_shape_green_500.svg"
                    className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] my-[1px] lg:w-[14px] xl:w-[16px] 2xl:w-[18px] 3xl:w-[21px]"
                    alt="shape Three"
                  />
                  <Text className="font-normal 3xl:ml-[10px] lg:ml-[7px] xl:ml-[8px] 2xl:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    3.1
                  </Text>
                  <Text className="font-normal xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    +0.49% tuần này
                  </Text>
                </Row>
              </Column>
              <Line className="self-center w-[1px] bg-blue_50 lg:h-[80px] xl:h-[91px] 2xl:h-[103px] 3xl:h-[123px]" />
              <Column className="my-[1px] w-[100%]">
                <Row className="justify-between w-[100%]">
                  <Column className="lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] w-[73%]">
                    <Text className="font-semibold lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                      20
                    </Text>
                    <Text className="font-normal 2xl:mt-[11px] 3xl:mt-[13px] lg:mt-[8px] xl:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                      Tổng số nhân viên
                    </Text>
                  </Column>
                  <Button
                    className="flex lg:h-[35px] xl:h-[40px] 2xl:h-[45px] 3xl:h-[53px] items-center justify-center lg:w-[34px] xl:w-[39px] 2xl:w-[44px] 3xl:w-[52px]"
                    shape="icbRoundedBorder12"
                  >
                    <Img
                      src="images/img_checkmark.svg"
                      className="flex items-center justify-center lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px]"
                      alt="checkmark"
                    />
                  </Button>
                </Row>
                <Row className="xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] pl-[1px] pt-[1px] w-[89%]">
                  <Img
                    src="images/img_shape_red_500.svg"
                    className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] my-[1px] lg:w-[14px] xl:w-[16px] 2xl:w-[18px] 3xl:w-[21px]"
                    alt="shape Four"
                  />
                  <Text className="font-normal 3xl:ml-[10px] lg:ml-[7px] xl:ml-[8px] 2xl:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    2.56
                  </Text>
                  <Text className="font-normal xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    -0.91% tuần này
                  </Text>
                </Row>
              </Column>
              <Line className="self-center w-[1px] bg-blue_50 lg:h-[80px] xl:h-[91px] 2xl:h-[103px] 3xl:h-[123px]" />
              <Column className="my-[1px] w-[100%]">
                <Row className="justify-evenly w-[100%]">
                  <Column className="lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] w-[78%]">
                    <Text className="font-semibold lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                      1 Tỷ VNĐ
                    </Text>
                    <Text className="font-normal lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                      Tổng doanh thu{" "}
                    </Text>
                  </Column>
                  <Button
                    className="flex lg:h-[35px] xl:h-[40px] 2xl:h-[45px] 3xl:h-[53px] items-center justify-center lg:w-[34px] xl:w-[39px] 2xl:w-[44px] 3xl:w-[52px]"
                    shape="icbRoundedBorder12"
                  >
                    <Img
                      src="images/img_cut.svg"
                      className="flex items-center justify-center"
                      alt="cut"
                    />
                  </Button>
                </Row>
                <Row className="xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] pl-[1px] pt-[1px] w-[83%]">
                  <Img
                    src="images/img_shape_green_500.svg"
                    className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] my-[1px] lg:w-[14px] xl:w-[16px] 2xl:w-[18px] 3xl:w-[21px]"
                    alt="shape Five"
                  />
                  <Text className="font-normal 3xl:ml-[10px] lg:ml-[7px] xl:ml-[8px] 2xl:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    7.2
                  </Text>
                  <Text className="font-normal xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] mt-[2px] not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    +1.51% tuần này
                  </Text>
                </Row>
              </Column>
            </List>
            <Row className="items-center justify-between lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] w-[100%]">
              <Column className="bg-white_A700 border border-blue_50 border-solid items-center lg:p-[15px] xl:p-[17px] 2xl:p-[20px] 3xl:p-[24px] rounded-radius12 w-[73%]">
                <Row className="mt-[2px] w-[100%]">
                  <Text className="font-medium mt-[1px] lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 w-[auto]">
                    Biểu đồ doanh thu
                  </Text>
                  <div className="bg-blue_600 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[225px] xl:ml-[257px] 2xl:ml-[290px] 3xl:ml-[348px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                  <Text className="font-normal lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Chiết khấu{" "}
                  </Text>
                  <div className="bg-orange_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[15px] xl:ml-[17px] 2xl:ml-[20px] 3xl:ml-[24px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                  <Text className="font-normal lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Đặt lịch{" "}
                  </Text>
                  <SelectBox
                    className="font-normal lg:ml-[15px] xl:ml-[17px] 2xl:ml-[20px] 3xl:ml-[24px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[11%]"
                    placeholderClassName="text-black_900"
                    name="Filter"
                    placeholder="Tháng"
                    isSearchable={false}
                    isMulti={false}
                    indicator={
                      <Img
                        src="images/img_arrowdown.svg"
                        className="lg:w-[5px] lg:h-[4px] lg:mr-[9px] xl:w-[6px] xl:h-[4px] xl:mr-[10px] 2xl:w-[7px] 2xl:h-[5px] 2xl:mr-[12px] 3xl:w-[8px] 3xl:h-[5px] 3xl:mr-[14px]"
                        alt="arrow_down"
                      />
                    }
                    shape="RoundedBorder8"
                    size="sm"
                    variant="OutlineIndigo3001e"
                  ></SelectBox>
                </Row>
                <Stack className="lg:h-[172px] xl:h-[197px] 2xl:h-[222px] 3xl:h-[266px] lg:mt-[20px] xl:mt-[23px] 2xl:mt-[26px] 3xl:mt-[31px] w-[100%]">
                  <Stack className="absolute bottom-[0] lg:h-[167px] xl:h-[191px] 2xl:h-[215px] 3xl:h-[257px] w-[100%]">
                    <Stack className="absolute lg:h-[167px] xl:h-[191px] 2xl:h-[215px] 3xl:h-[257px] w-[100%]">
                      <Stack className="absolute lg:h-[167px] xl:h-[191px] 2xl:h-[215px] 3xl:h-[257px] w-[100%]">
                        <Column className="absolute items-center w-[100%]">
                          <Row className="items-center justify-between w-[100%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              100
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[95%]" />
                          </Row>
                          <Row className="items-center justify-between lg:mt-[20px] xl:mt-[23px] 2xl:mt-[26px] 3xl:mt-[31px] w-[99%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              80
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[96%]" />
                          </Row>
                          <Row className="items-center justify-between lg:mt-[19px] xl:mt-[22px] 2xl:mt-[25px] 3xl:mt-[30px] w-[99%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              60
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[96%]" />
                          </Row>
                          <Row className="items-center justify-between lg:mt-[20px] xl:mt-[23px] 2xl:mt-[26px] 3xl:mt-[31px] w-[99%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              40
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[95%]" />
                          </Row>
                          <Row className="items-center justify-between lg:mt-[19px] xl:mt-[22px] 2xl:mt-[25px] 3xl:mt-[30px] w-[99%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              20
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[96%]" />
                          </Row>
                          <Row className="items-center justify-between lg:mt-[20px] xl:mt-[23px] 2xl:mt-[26px] 3xl:mt-[31px] w-[98%]">
                            <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                              0
                            </Text>
                            <Line className="bg-blue_50 h-[1px] w-[97%]" />
                          </Row>
                        </Column>
                        <div className="absolute bg-gradient  bottom-[3%] lg:h-[141px] xl:h-[162px] 2xl:h-[182px] 3xl:h-[218px] left-[39%] rounded-bl-[8px] rounded-br-[8px] rounded-tl-[0] rounded-tr-[0] w-[4%]"></div>
                      </Stack>
                      <Img
                        src="images/img_chart1.svg"
                        className="absolute bottom-[23%] 2xl:h-[103px] 3xl:h-[123px] lg:h-[80px] xl:h-[91px] right-[0] w-[94%]"
                        alt="ChartOne"
                      />
                    </Stack>
                    <Column
                      className="absolute bg-cover bg-repeat bottom-[18%] 2xl:p-[10px] 3xl:p-[12px] lg:p-[7px] xl:p-[8px] right-[0] w-[94%]"
                      style={{
                        backgroundImage: "url('images/img_group6.svg')",
                      }}
                    >
                      <div className="bg-blue_600 border border-solid border-white_A700 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:mb-[56px] xl:mb-[64px] 2xl:mb-[73px] 3xl:mb-[87px] lg:ml-[191px] xl:ml-[218px] 2xl:ml-[246px] 3xl:ml-[295px] rounded-radius50 shadow-bs lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                    </Column>
                  </Stack>
                  <Column className="absolute items-center left-[34%] top-[4%] w-[19%]">
                    <Column className="bg-white_A700 items-center justify-center xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] rounded-radius8 shadow-bs w-[100%]">
                      <Text className="font-normal mt-[2px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-indigo_300 w-[auto]">
                        15 Th.8 2022
                      </Text>
                      <Text className="font-medium mb-[3px] lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                        5.949.200 VND
                      </Text>
                    </Column>
                    <Img
                      src="images/img_pin.svg"
                      className="lg:h-[4px] xl:h-[5px] 2xl:h-[6px] 3xl:h-[7px] w-[9%]"
                      alt="Pin"
                    />
                  </Column>
                </Stack>
                <Row className="items-center justify-between mb-[4px] 2xl:mt-[10px] 3xl:mt-[12px] lg:mt-[7px] xl:mt-[8px] w-[94%]">
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.01
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.02
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.03
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.04
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.05
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.06
                  </Text>
                  <Text className="font-normal not-italic lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-indigo_300 w-[auto]">
                    Th.07
                  </Text>
                </Row>
              </Column>
              <Column className="bg-white_A700 border border-blue_50 border-solid items-center lg:p-[15px] xl:p-[17px] 2xl:p-[20px] 3xl:p-[24px] rounded-radius12 w-[24%]">
                <Row className="items-center justify-between mt-[4px] w-[98%]">
                  <Text className="font-medium lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 w-[auto]">
                    Doanh thu
                  </Text>
                  <Img
                    src="images/img_shape_black_900.svg"
                    className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] w-[8%]"
                    alt="shape Six"
                  />
                </Row>
                <Stack className="lg:h-[168px] xl:h-[193px] 2xl:h-[217px] 3xl:h-[260px] lg:mt-[19px] xl:mt-[22px] 2xl:mt-[25px] 3xl:mt-[30px] lg:w-[168px] xl:w-[192px] 2xl:w-[216px] 3xl:w-[259px]">
                  <svg style={{ height: 0, width: 0 }}>
                    <defs>
                      <linearGradient id="linear-gradient-32">
                        <stop key="0" offset="0" stopColor="#347ae2" />
                        <stop key="1" offset="1" stopColor="#e6eeff" />
                      </linearGradient>
                    </defs>
                  </svg>
                  <CircularProgressbar
                    className="absolute lg:h-[168px] xl:h-[193px] 2xl:h-[217px] 3xl:h-[260px] overflow-visible w-[100%]"
                    value="78"
                    name="GroupThirtyTwo"
                    strokeWidth={6}
                    styles={{
                      trail: { strokeWidth: 6, stroke: "#e6edff" },
                      path: {
                        strokeLinecap: "square",
                        height: "100%",
                        "transform-origin": "center",
                        transform: "rotate(90deg)",
                        stroke: "url(#linear-gradient-32)",
                      },
                    }}
                  ></CircularProgressbar>
                  <svg style={{ height: 0, width: 0 }}>
                    <defs>
                      <linearGradient id="linear-gradient-33">
                        <stop key="0" offset="0" stopColor="#ff9500" />
                        <stop key="1" offset="0.98" stopColor="#e6eeff" />
                      </linearGradient>
                    </defs>
                  </svg>
                  <CircularProgressbar
                    className="absolute lg:h-[134px] xl:h-[154px] 2xl:h-[173px] 3xl:h-[207px] inset-[0] justify-center m-[auto] overflow-visible lg:w-[133px] xl:w-[153px] 2xl:w-[172px] 3xl:w-[206px]"
                    value="72"
                    name="GroupThirtyThree"
                    strokeWidth={6}
                    styles={{
                      trail: { strokeWidth: 6, stroke: "#e6edff" },
                      path: {
                        strokeLinecap: "square",
                        height: "100%",
                        "transform-origin": "center",
                        transform: "rotate(90deg)",
                        stroke: "url(#linear-gradient-33)",
                      },
                    }}
                  ></CircularProgressbar>
                </Stack>
                <Row className="justify-center lg:mt-[15px] xl:mt-[17px] 2xl:mt-[20px] 3xl:mt-[24px] pt-[3px] w-[80%]">
                  <div className="bg-orange_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] mt-[1px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                  <Text className="font-normal lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Trực tuyến
                  </Text>
                  <div className="bg-blue_600 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[15px] xl:ml-[17px] 2xl:ml-[20px] 3xl:ml-[24px] mt-[1px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                  <Text className="font-normal lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] mt-[1px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Giao dịch
                  </Text>
                </Row>
              </Column>
            </Row>
            <footer className="bg-white_A700 border border-blue_50 border-solid lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] rounded-radius10 w-[100%]">
              <Column className="items-center mx-[auto] lg:my-[16px] xl:my-[18px] 2xl:my-[21px] 3xl:my-[25px] w-[96%]">
                <Row className="justify-between w-[99%]">
                  <Text className="font-medium mt-[4px] lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 w-[auto]">
                    Danh sách đơn hàng
                  </Text>
                  <SelectBox
                    className="font-normal mb-[2px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[8%]"
                    placeholderClassName="text-black_900"
                    name="Filter One"
                    placeholder="Tháng"
                    isSearchable={false}
                    isMulti={false}
                    indicator={
                      <Img
                        src="images/img_arrowdown.svg"
                        className="lg:w-[5px] lg:h-[4px] lg:mr-[9px] xl:w-[6px] xl:h-[4px] xl:mr-[10px] 2xl:w-[7px] 2xl:h-[5px] 2xl:mr-[12px] 3xl:w-[8px] 3xl:h-[5px] 3xl:mr-[14px]"
                        alt="arrow_down"
                      />
                    }
                    shape="RoundedBorder8"
                    size="sm"
                    variant="OutlineIndigo3001e"
                  ></SelectBox>
                </Row>
                <Row className="bg-white_A700 border border-blue_50 border-solid items-center xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                  <Text className="font-medium xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    STT
                  </Text>
                  <Text className="font-medium lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Mã số
                  </Text>
                  <Img
                    src="images/img_sort.svg"
                    className="2xl:h-[10px] 3xl:h-[11px] lg:h-[7px] xl:h-[9px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] 3xl:w-[10px] lg:w-[7px] xl:w-[8px] 2xl:w-[9px]"
                    alt="sort"
                  />
                  <Text className="font-medium lg:mb-[4px] xl:mb-[5px] 2xl:mb-[6px] 3xl:mb-[7px] lg:ml-[49px] xl:ml-[56px] 2xl:ml-[63px] 3xl:ml-[75px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Thời gian
                  </Text>
                  <Text className="font-medium lg:mb-[4px] xl:mb-[5px] 2xl:mb-[6px] 3xl:mb-[7px] lg:ml-[64px] xl:ml-[73px] 2xl:ml-[83px] 3xl:ml-[99px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Tên khách hàng
                  </Text>
                  <Img
                    src="images/img_sort.svg"
                    className="2xl:h-[10px] 3xl:h-[11px] lg:h-[7px] xl:h-[9px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] 3xl:w-[10px] lg:w-[7px] xl:w-[8px] 2xl:w-[9px]"
                    alt="sort One"
                  />
                  <Text className="font-medium lg:mb-[4px] xl:mb-[5px] 2xl:mb-[6px] 3xl:mb-[7px] lg:ml-[39px] xl:ml-[45px] 2xl:ml-[51px] 3xl:ml-[61px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Địa chỉ
                  </Text>
                  <Text className="font-medium lg:ml-[112px] xl:ml-[128px] 2xl:ml-[144px] 3xl:ml-[172px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Số tiền
                  </Text>
                  <Img
                    src="images/img_sort.svg"
                    className="2xl:h-[10px] 3xl:h-[11px] lg:h-[7px] xl:h-[9px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] 3xl:w-[10px] lg:w-[7px] xl:w-[8px] 2xl:w-[9px]"
                    alt="sort Two"
                  />
                  <Text className="font-medium lg:mb-[4px] xl:mb-[5px] 2xl:mb-[6px] 3xl:mb-[7px] lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Tình trạng
                  </Text>
                  <Img
                    src="images/img_sort.svg"
                    className="2xl:h-[10px] 3xl:h-[11px] lg:h-[7px] xl:h-[9px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] 3xl:w-[10px] lg:w-[7px] xl:w-[8px] 2xl:w-[9px]"
                    alt="sort Three"
                  />
                </Row>
                <Row className="bg-white_A700 border border-blue_50 border-solid items-center xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                  <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    1
                  </Text>
                  <Text className="font-normal lg:ml-[44px] xl:ml-[50px] 2xl:ml-[57px] 3xl:ml-[68px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    #12594
                  </Text>
                  <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    01 Th.12, 2021
                  </Text>
                  <Text className="font-normal lg:ml-[51px] xl:ml-[58px] 2xl:ml-[66px] 3xl:ml-[79px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Khánh Số Một
                  </Text>
                  <Text className="font-normal lg:ml-[64px] xl:ml-[73px] 2xl:ml-[83px] 3xl:ml-[99px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    312 Quang Trung
                  </Text>
                  <Text className="font-normal 3xl:ml-[103px] lg:ml-[66px] xl:ml-[76px] 2xl:ml-[86px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    90.000VND
                  </Text>
                  <Row className="bg-white_A700 items-center justify-center lg:ml-[45px] xl:ml-[52px] 2xl:ml-[59px] 3xl:ml-[70px] mt-[4px] lg:p-[4px] xl:p-[5px] 2xl:p-[6px] 3xl:p-[7px] rounded-radius8 shadow-bs w-[6%]">
                    <div className="bg-green_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                    <Text className="font-normal mb-[1px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] lg:mr-[3px] xl:mr-[4px] 2xl:mr-[5px] 3xl:mr-[6px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Mới
                    </Text>
                  </Row>
                  <Img
                    src="images/img_shape_black_900.svg"
                    className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] xl:ml-[104px] 2xl:ml-[118px] 3xl:ml-[141px] lg:ml-[91px] w-[2%]"
                    alt="shape Seven"
                  />
                </Row>
                <Row className="bg-white_A700 border border-blue_50 border-solid items-center xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                  <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    2
                  </Text>
                  <Text className="font-normal lg:ml-[42px] xl:ml-[48px] 2xl:ml-[54px] 3xl:ml-[64px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    #12490
                  </Text>
                  <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Nov 15, 2021
                  </Text>
                  <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Thomas Bleir
                  </Text>
                  <Text className="font-normal lg:ml-[64px] xl:ml-[73px] 2xl:ml-[83px] 3xl:ml-[99px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Lathrop Ave, Harvey
                  </Text>
                  <Text className="font-normal lg:ml-[52px] xl:ml-[59px] 2xl:ml-[67px] 3xl:ml-[80px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    $477.14
                  </Text>
                  <Row className="bg-white_A700 items-center justify-center lg:ml-[63px] xl:ml-[72px] 2xl:ml-[82px] 3xl:ml-[98px] my-[2px] p-[4px] rounded-radius8 shadow-bs w-[11%]">
                    <div className="bg-orange_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                    <Text className="font-normal mt-[3px] lg:mx-[6px] xl:mx-[7px] 2xl:mx-[8px] 3xl:mx-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      On Delivery
                    </Text>
                  </Row>
                  <Img
                    src="images/img_shape_black_900.svg"
                    className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] lg:ml-[55px] xl:ml-[63px] 2xl:ml-[71px] 3xl:ml-[85px] w-[2%]"
                    alt="shape Eight"
                  />
                </Row>
                <Row className="bg-white_A700 border border-blue_50 border-solid items-center xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                  <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    3
                  </Text>
                  <Text className="font-normal lg:ml-[41px] xl:ml-[47px] 2xl:ml-[53px] 3xl:ml-[63px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    #12306
                  </Text>
                  <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Nov 02, 2021
                  </Text>
                  <Text className="font-normal lg:ml-[52px] xl:ml-[59px] 2xl:ml-[67px] 3xl:ml-[80px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Bill Norton
                  </Text>
                  <Text className="font-normal 2xl:ml-[104px] 3xl:ml-[124px] lg:ml-[80px] xl:ml-[92px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    5685 Bruce Ave, Portage
                  </Text>
                  <Text className="font-normal lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    $477.14
                  </Text>
                  <Row className="bg-white_A700 items-center justify-center lg:ml-[63px] xl:ml-[72px] 2xl:ml-[82px] 3xl:ml-[98px] my-[2px] p-[4px] rounded-radius8 shadow-bs w-[11%]">
                    <div className="bg-orange_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                    <Text className="font-normal lg:mx-[6px] xl:mx-[7px] 2xl:mx-[8px] 3xl:mx-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      On Delivery
                    </Text>
                  </Row>
                  <Img
                    src="images/img_shape_black_900.svg"
                    className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] lg:ml-[55px] xl:ml-[63px] 2xl:ml-[71px] 3xl:ml-[85px] w-[2%]"
                    alt="shape Nine"
                  />
                </Row>
              </Column>
            </footer>
          </Column>
        </Row>
      </Column>
    </>
  );
};

export default TngquanPage;

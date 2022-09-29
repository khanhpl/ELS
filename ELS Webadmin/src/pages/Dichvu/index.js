import React from "react";

import {
  Column,
  Row,
  Img,
  Text,
  SelectBox,
  Line,
  Stack,
  Button,
  List,
} from "components";

const DichvuPage = () => {
  return (
    <>
      <Column className="bg-white_A700 font-poppins items-center mx-[auto] lg:p-[17px] xl:p-[20px] 2xl:p-[23px] 3xl:p-[27px] shadow-bs3 w-[100%]">
        <Row className="lg:mb-[29px] xl:mb-[33px] 2xl:mb-[38px] 3xl:mb-[45px] lg:mt-[10px] xl:mt-[12px] 2xl:mt-[14px] 3xl:mt-[16px] w-[98%]">
          <Column className="items-end w-[19%]">
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
            <Column className="lg:mt-[58px] xl:mt-[66px] 2xl:mt-[75px] 3xl:mt-[90px] w-[75%]">
              <Row className="ml-[2px] w-[61%]">
                <Img
                  src="images/img_signal.svg"
                  className="lg:h-[14px] xl:h-[16px] 2xl:h-[18px] 3xl:h-[21px] w-[16%]"
                  alt="signal"
                />
                <Text className="font-medium lg:ml-[10px] xl:ml-[12px] 2xl:ml-[14px] 3xl:ml-[16px] mt-[1px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-blue_600 w-[auto]">
                  Tổng quan
                </Text>
              </Row>
              <SelectBox
                className="font-medium lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[95%]"
                placeholderClassName="text-indigo_300"
                name="NavList"
                placeholder="Dịch vụ"
                isSearchable={false}
                isMulti={false}
                getOptionLabel={(e) => (
                  <div className="flex items-center">
                    <Img
                      src="images/img_lock.svg"
                      className="lg:w-[13px] lg:h-[14px] lg:mr-[11px] xl:w-[15px] xl:h-[17px] xl:mr-[13px] 2xl:w-[17px] 2xl:h-[19px] 2xl:mr-[15px] 3xl:w-[20px] 3xl:h-[22px] 3xl:mr-[18px]"
                      alt="lock"
                    />
                    <span>{e.label}</span>
                  </div>
                )}
                indicator={
                  <Img
                    src="images/img_arrowdown.svg"
                    className="mr-[0] lg:w-[8px] lg:h-[5px] xl:w-[9px] xl:h-[6px] 2xl:w-[11px] 2xl:h-[7px] 3xl:w-[13px] 3xl:h-[8px]"
                    alt="arrow_down"
                  />
                }
                size="sm"
              ></SelectBox>
              <SelectBox
                className="font-medium lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[95%]"
                placeholderClassName="text-indigo_300"
                name="NavList One"
                placeholder="Chăm sóc viên"
                isSearchable={false}
                isMulti={false}
                getOptionLabel={(e) => (
                  <div className="flex items-center">
                    <Img
                      src="images/img_ticket.svg"
                      className="lg:w-[12px] lg:h-[14px] lg:mr-[11px] xl:w-[14px] xl:h-[17px] xl:mr-[13px] 2xl:w-[16px] 2xl:h-[19px] 2xl:mr-[15px] 3xl:w-[19px] 3xl:h-[22px] 3xl:mr-[18px]"
                      alt="shape"
                    />
                    <span>{e.label}</span>
                  </div>
                )}
                indicator={
                  <Img
                    src="images/img_arrowdown.svg"
                    className="mr-[0] lg:w-[8px] lg:h-[5px] xl:w-[9px] xl:h-[6px] 2xl:w-[11px] 2xl:h-[7px] 3xl:w-[13px] 3xl:h-[8px]"
                    alt="arrow_down"
                  />
                }
                size="sm"
              ></SelectBox>
              <Row className="ml-[1px] lg:mt-[23px] xl:mt-[26px] 2xl:mt-[30px] 3xl:mt-[36px] w-[99%]">
                <Img
                  src="images/img_ticket.svg"
                  className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[8%]"
                  alt="shape"
                />
                <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[2px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Quản lý khách hàng
                </Text>
              </Row>
              <Row className="justify-between lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] pl-[3px] pt-[3px] w-[97%]">
                <Img
                  src="images/img_music.svg"
                  className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] ml-[1px] my-[1px] w-[9%]"
                  alt="music"
                />
                <Text className="font-medium mt-[2px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Đơn đăng ký
                </Text>
                <Text className="bg-red_500 flex font-medium items-center mb-[3px] lg:px-[3px] xl:px-[4px] 2xl:px-[5px] 3xl:px-[6px] rounded-radius50 xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-white_A700 w-[18px]">
                  2
                </Text>
              </Row>
              <Row className="ml-[3px] lg:mt-[24px] xl:mt-[27px] 2xl:mt-[31px] 3xl:mt-[37px] w-[86%]">
                <Img
                  src="images/img_music.svg"
                  className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[10%]"
                  alt="music One"
                />
                <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[1px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Quản lý Booking
                </Text>
              </Row>
              <Row className="ml-[2px] lg:mt-[22px] xl:mt-[25px] 2xl:mt-[29px] 3xl:mt-[34px] w-[46%]">
                <Img
                  src="images/img_settings.svg"
                  className="lg:h-[16px] xl:h-[18px] 2xl:h-[21px] 3xl:h-[25px] w-[21%]"
                  alt="settings"
                />
                <Text className="font-medium lg:ml-[10px] xl:ml-[12px] 2xl:ml-[14px] 3xl:ml-[16px] mt-[3px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Cài đặt
                </Text>
              </Row>
            </Column>
            <Row className="lg:mt-[213px] xl:mt-[243px] 2xl:mt-[274px] 3xl:mt-[328px] w-[48%]">
              <Img
                src="images/img_ticket.svg"
                className="lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px] mt-[2px] lg:w-[14px] xl:w-[16px] 2xl:w-[19px] 3xl:w-[22px]"
                alt="ticket"
              />
              <Text className="font-medium lg:ml-[10px] xl:ml-[12px] 2xl:ml-[14px] 3xl:ml-[16px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-red_500 w-[auto]">
                ĐĂNG XUẤT
              </Text>
            </Row>
          </Column>
          <Line className="bg-blue_600 lg:h-[19px] xl:h-[22px] 2xl:h-[25px] 3xl:h-[29px] lg:mt-[121px] xl:mt-[138px] 2xl:mt-[156px] 3xl:mt-[187px] rounded-bl-[2px] rounded-br-[0] rounded-tl-[2px] rounded-tr-[0] w-[4px]" />
          <Line className="bg-blue_50 lg:h-[592px] xl:h-[677px] 2xl:h-[761px] 3xl:h-[913px] lg:mt-[32px] xl:mt-[37px] 2xl:mt-[42px] 3xl:mt-[50px] w-[1px]" />
          <Column className="lg:ml-[30px] xl:ml-[34px] 2xl:ml-[39px] 3xl:ml-[46px] mt-[2px] w-[78%]">
            <Row className="lg:pr-[4px] xl:pr-[5px] 2xl:pr-[6px] 3xl:pr-[7px] w-[100%]">
              <Column className="lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] w-[76%]">
                <Text className="font-medium lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                  Dịch vụ{" "}
                </Text>
                <Text className="font-normal lg:mt-[10px] xl:mt-[12px] 2xl:mt-[14px] 3xl:mt-[16px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Đây là tất cả dịch vụ có trong ElderlySitter
                </Text>
              </Column>
              <Stack className="lg:h-[17px] xl:h-[19px] 2xl:h-[22px] 3xl:h-[26px] mt-[4px] w-[2%]">
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
            <Row className="font-roboto lg:mt-[11px] xl:mt-[13px] 2xl:mt-[15px] 3xl:mt-[18px] w-[100%]">
              <Row className="bg-gray_50_ed items-center justify-end mt-[2px] lg:p-[6px] xl:p-[7px] 2xl:p-[8px] 3xl:p-[9px] rounded-radius10 w-[35%]">
                <Text className="font-medium font-sfprodisplay my-[1px] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-gray_800_99 w-[auto]">
                  􀊫
                </Text>
                <Text className="font-normal font-sfprotext lg:ml-[31px] xl:ml-[36px] 2xl:ml-[41px] 3xl:ml-[49px] not-italic lg:text-[13px] xl:text-[15px] 2xl:text-[17px] 3xl:text-[20px] text-gray_800_99 tracking-ls1 w-[auto]">
                  Search
                </Text>
                <Img
                  src="images/img_close.svg"
                  className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] lg:ml-[171px] xl:ml-[196px] 2xl:ml-[221px] 3xl:ml-[265px] my-[1px] lg:w-[14px] xl:w-[16px] 2xl:w-[18px] 3xl:w-[21px]"
                  alt="close"
                />
              </Row>
              <Button
                className="font-normal italic lg:ml-[122px] xl:ml-[140px] 2xl:ml-[158px] 3xl:ml-[189px] lg:text-[13px] xl:text-[15px] 2xl:text-[17px] 3xl:text-[20px] text-center w-[14%]"
                size="sm"
                variant="FillGreenA700"
              >
                Thêm mới
              </Button>
              <Button
                className="font-normal italic lg:ml-[33px] xl:ml-[38px] 2xl:ml-[43px] 3xl:ml-[51px] lg:text-[13px] xl:text-[15px] 2xl:text-[17px] 3xl:text-[20px] text-center w-[14%]"
                size="sm"
                variant="FillIndigoA400"
              >
                Cập nhật
              </Button>
              <Button
                className="font-normal italic lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] lg:text-[13px] xl:text-[15px] 2xl:text-[17px] 3xl:text-[20px] text-center w-[14%]"
                size="sm"
                variant="FillRedA700"
              >
                Xoá
              </Button>
            </Row>
            <Column className="bg-white_A700 border border-blue_50 border-solid font-poppins items-center justify-center lg:mt-[24px] xl:mt-[27px] 2xl:mt-[31px] 3xl:mt-[37px] lg:p-[15px] xl:p-[17px] 2xl:p-[20px] 3xl:p-[24px] rounded-radius10 w-[100%]">
              <Text className="font-medium lg:mt-[3px] xl:mt-[4px] 2xl:mt-[5px] 3xl:mt-[6px] lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 w-[auto]">
                Danh sách dịch vụ
              </Text>
              <Column className="mb-[2px] lg:mt-[12px] xl:mt-[14px] 2xl:mt-[16px] 3xl:mt-[19px] w-[100%]">
                <List
                  className="gap-[0] min-h-[auto] w-[100%]"
                  orientation="vertical"
                >
                  <Row className="bg-white_A700 border border-blue_50 border-solid items-center my-[0] xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
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
                    <Img
                      src="images/img_sort.svg"
                      className="2xl:h-[10px] 3xl:h-[11px] lg:h-[7px] xl:h-[9px] lg:ml-[116px] xl:ml-[133px] 2xl:ml-[150px] 3xl:ml-[180px] 3xl:w-[10px] lg:w-[7px] xl:w-[8px] 2xl:w-[9px]"
                      alt="sort One"
                    />
                    <Text className="font-medium mb-[2px] lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] lg:mt-[10px] xl:mt-[11px] 2xl:mt-[13px] 3xl:mt-[15px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Tên dịch vụ
                    </Text>
                    <Text className="font-medium lg:ml-[154px] xl:ml-[177px] 2xl:ml-[199px] 3xl:ml-[238px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
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
                  <Row className="bg-white_A700 border border-blue_50 border-solid items-center my-[0] xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                    <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      1
                    </Text>
                    <Text className="font-normal lg:ml-[44px] xl:ml-[50px] 2xl:ml-[57px] 3xl:ml-[68px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      #12594
                    </Text>
                    <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      01 Th.12, 2021
                    </Text>
                    <Text className="font-normal lg:ml-[115px] xl:ml-[132px] 2xl:ml-[149px] 3xl:ml-[178px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Trò chuyện cùng
                    </Text>
                    <Text className="font-normal lg:ml-[128px] xl:ml-[146px] 2xl:ml-[165px] 3xl:ml-[198px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      250000đ
                    </Text>
                    <Row className="bg-white_A700 items-center justify-center lg:ml-[57px] xl:ml-[65px] 2xl:ml-[74px] 3xl:ml-[88px] mt-[4px] p-[4px] rounded-radius8 shadow-bs w-[12%]">
                      <div className="bg-green_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                      <Text className="font-normal mt-[3px] lg:mx-[6px] xl:mx-[7px] 2xl:mx-[8px] 3xl:mx-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                        Đã xác nhận
                      </Text>
                    </Row>
                    <Img
                      src="images/img_shape_black_900.svg"
                      className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] lg:ml-[49px] xl:ml-[56px] 2xl:ml-[64px] 3xl:ml-[76px] w-[2%]"
                      alt="shape One"
                    />
                  </Row>
                  <Row className="bg-white_A700 border border-blue_50 border-solid items-center my-[0] xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                    <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      2
                    </Text>
                    <Text className="font-normal lg:ml-[42px] xl:ml-[48px] 2xl:ml-[54px] 3xl:ml-[64px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      #12490
                    </Text>
                    <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      15 Th.11 2021
                    </Text>
                    <Text className="font-normal lg:ml-[120px] xl:ml-[137px] 2xl:ml-[155px] 3xl:ml-[186px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Nấu ăn
                    </Text>
                    <Text className="font-normal lg:ml-[174px] xl:ml-[199px] 2xl:ml-[224px] 3xl:ml-[268px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      150000đ
                    </Text>
                    <Row className="bg-white_A700 items-center justify-center lg:ml-[58px] xl:ml-[66px] 2xl:ml-[75px] 3xl:ml-[90px] my-[2px] p-[4px] rounded-radius8 shadow-bs w-[8%]">
                      <div className="bg-red_A700 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                      <Text className="font-normal mt-[3px] lg:mx-[6px] xl:mx-[7px] 2xl:mx-[8px] 3xl:mx-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                        Đã huỷ
                      </Text>
                    </Row>
                    <Img
                      src="images/img_shape_black_900.svg"
                      className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] 3xl:ml-[116px] lg:ml-[75px] xl:ml-[86px] 2xl:ml-[97px] w-[2%]"
                      alt="shape Two"
                    />
                  </Row>
                  <Row className="bg-white_A700 border border-blue_50 border-solid items-center my-[0] xl:p-[10px] 2xl:p-[12px] 3xl:p-[14px] lg:p-[9px] w-[100%]">
                    <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      3
                    </Text>
                    <Text className="font-normal lg:ml-[41px] xl:ml-[47px] 2xl:ml-[53px] 3xl:ml-[63px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      #12306
                    </Text>
                    <Text className="font-normal lg:ml-[54px] xl:ml-[62px] 2xl:ml-[70px] 3xl:ml-[84px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      02 Th.11 2021
                    </Text>
                    <Text className="font-normal lg:ml-[120px] xl:ml-[137px] 2xl:ml-[155px] 3xl:ml-[186px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Chăm sóc y tế
                    </Text>
                    <Text className="font-normal lg:ml-[136px] xl:ml-[156px] 2xl:ml-[176px] 3xl:ml-[211px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      400000đ
                    </Text>
                    <Row className="bg-white_A700 items-center justify-center lg:ml-[55px] xl:ml-[63px] 2xl:ml-[71px] 3xl:ml-[85px] my-[2px] p-[4px] rounded-radius8 shadow-bs w-[10%]">
                      <div className="bg-orange_500 3xl:h-[10px] lg:h-[7px] xl:h-[8px] 2xl:h-[9px] lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] rounded-radius50 lg:w-[6px] xl:w-[7px] 2xl:w-[8px] 3xl:w-[9px]"></div>
                      <Text className="font-normal mt-[3px] lg:mx-[6px] xl:mx-[7px] 2xl:mx-[8px] 3xl:mx-[9px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                        Đang làm
                      </Text>
                    </Row>
                    <Img
                      src="images/img_shape_black_900.svg"
                      className="xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] lg:ml-[61px] xl:ml-[70px] 2xl:ml-[79px] 3xl:ml-[94px] w-[2%]"
                      alt="shape Three"
                    />
                  </Row>
                </List>
                <div className="bg-white_A700 2xl:h-[101px] 3xl:h-[121px] lg:h-[78px] xl:h-[89px] xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] 2xl:w-[100px] 3xl:w-[120px] lg:w-[77px] xl:w-[88px]"></div>
                <Text className="font-medium lg:mt-[12px] xl:mt-[14px] 2xl:mt-[16px] 3xl:mt-[19px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
                  Note: Xem lại địa chỉ làm việc
                </Text>
              </Column>
            </Column>
            <Text className="font-normal 3xl:ml-[1194px] lg:ml-[773px] xl:ml-[885px] 2xl:ml-[995px] lg:mt-[107px] xl:mt-[122px] 2xl:mt-[138px] 3xl:mt-[165px] not-italic lg:text-[11px] xl:text-[13px] 2xl:text-[15px] 3xl:text-[18px] text-black_900 w-[auto]">
              1 2 3 4 5
            </Text>
          </Column>
        </Row>
      </Column>
    </>
  );
};

export default DichvuPage;

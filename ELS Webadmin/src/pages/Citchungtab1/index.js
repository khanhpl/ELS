import React from "react";

import { Column, Row, Img, Text, Stack, SelectBox, Line } from "components";

const Citchungtab1Page = () => {
  return (
    <>
      <Column className="bg-white_A700 font-poppins items-center justify-center mx-[auto] lg:p-[17px] xl:p-[20px] 2xl:p-[23px] 3xl:p-[27px] shadow-bs3 w-[100%]">
        <Row className="items-end lg:mt-[10px] xl:mt-[12px] 2xl:mt-[14px] 3xl:mt-[16px] lg:pr-[4px] xl:pr-[5px] 2xl:pr-[6px] 3xl:pr-[7px] w-[98%]">
          <Img
            src="images/img_location.svg"
            className="lg:h-[25px] xl:h-[29px] 2xl:h-[33px] 3xl:h-[39px] lg:mb-[4px] xl:mb-[5px] 2xl:mb-[6px] 3xl:mb-[7px] w-[2%]"
            alt="location"
          />
          <Text className="font-medium ml-[1px] lg:my-[5px] xl:my-[6px] 2xl:my-[7px] 3xl:my-[8px] lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 tracking-ls1 w-[auto]">
            ElderlySitter
          </Text>
          <Text className="font-medium lg:ml-[119px] xl:ml-[136px] 2xl:ml-[153px] 3xl:ml-[183px] 2xl:mt-[10px] 3xl:mt-[12px] lg:mt-[7px] xl:mt-[8px] lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
            Cài đặt
          </Text>
          <Img
            src="images/img_search.svg"
            className="lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px] lg:ml-[506px] xl:ml-[579px] 2xl:ml-[651px] 3xl:ml-[781px] 3xl:my-[10px] lg:my-[7px] xl:my-[8px] 2xl:my-[9px] lg:w-[14px] xl:w-[16px] 2xl:w-[19px] 3xl:w-[22px]"
            alt="search"
          />
          <Stack className="lg:h-[17px] xl:h-[19px] 2xl:h-[22px] 3xl:h-[26px] 2xl:mb-[10px] 3xl:mb-[12px] lg:mb-[7px] xl:mb-[8px] lg:ml-[22px] xl:ml-[25px] 2xl:ml-[29px] 3xl:ml-[34px] lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] w-[1%]">
            <Img
              src="images/img_volume.svg"
              className="absolute bottom-[0] lg:h-[15px] xl:h-[17px] 2xl:h-[20px] 3xl:h-[23px] left-[0] w-[85%]"
              alt="volume"
            />
            <div className="absolute bg-red_500 xl:h-[4px] lg:h-[4px] 3xl:h-[5px] 2xl:h-[5px] right-[0] rounded-radius50 top-[0] xl:w-[3px] lg:w-[3px] 3xl:w-[4px] 2xl:w-[4px]"></div>
          </Stack>
          <Img
            src="images/img_avatar.png"
            className="lg:h-[25px] xl:h-[29px] 2xl:h-[33px] 3xl:h-[39px] lg:ml-[24px] xl:ml-[28px] 2xl:ml-[32px] 3xl:ml-[38px] my-[3px] rounded-radius50 lg:w-[24px] xl:w-[28px] 2xl:w-[32px] 3xl:w-[38px]"
            alt="avatar"
          />
          <SelectBox
            className="font-normal xl:mb-[10px] 2xl:mb-[12px] 3xl:mb-[14px] lg:mb-[9px] xl:ml-[10px] 2xl:ml-[12px] 3xl:ml-[14px] lg:ml-[9px] 3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[11%]"
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
        <Row className="lg:mb-[29px] xl:mb-[33px] 2xl:mb-[38px] 3xl:mb-[45px] mt-[3px] w-[96%]">
          <Column className="lg:mt-[50px] xl:mt-[57px] 2xl:mt-[65px] 3xl:mt-[78px] w-[17%]">
            <Row className="ml-[2px] w-[53%]">
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
              className="font-medium lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[83%]"
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
              className="font-medium lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[83%]"
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
            <Row className="ml-[1px] lg:mt-[23px] xl:mt-[26px] 2xl:mt-[30px] 3xl:mt-[36px] w-[87%]">
              <Img
                src="images/img_ticket.svg"
                className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[8%]"
                alt="shape"
              />
              <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[2px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                Quản lý khách hàng
              </Text>
            </Row>
            <Row className="lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] pl-[3px] pt-[3px] w-[84%]">
              <Img
                src="images/img_music.svg"
                className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] ml-[1px] my-[1px] w-[9%]"
                alt="music"
              />
              <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[2px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                Đơn đăng ký
              </Text>
              <Text className="bg-red_500 flex font-medium items-center mb-[3px] lg:ml-[26px] xl:ml-[30px] 2xl:ml-[34px] 3xl:ml-[40px] lg:px-[3px] xl:px-[4px] 2xl:px-[5px] 3xl:px-[6px] rounded-radius50 xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-white_A700 w-[18px]">
                2
              </Text>
            </Row>
            <Row className="ml-[3px] lg:mt-[24px] xl:mt-[27px] 2xl:mt-[31px] 3xl:mt-[37px] w-[75%]">
              <Img
                src="images/img_music.svg"
                className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[10%]"
                alt="music One"
              />
              <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[1px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                Quản lý Booking
              </Text>
            </Row>
            <Row className="ml-[2px] lg:mt-[22px] xl:mt-[25px] 2xl:mt-[29px] 3xl:mt-[34px] w-[40%]">
              <Img
                src="images/img_settings.svg"
                className="lg:h-[16px] xl:h-[18px] 2xl:h-[21px] 3xl:h-[25px] w-[21%]"
                alt="settings"
              />
              <Text className="font-medium lg:ml-[10px] xl:ml-[12px] 2xl:ml-[14px] 3xl:ml-[16px] mt-[3px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                Cài đặt
              </Text>
            </Row>
            <Row className="ml-[2px] lg:mt-[199px] xl:mt-[228px] 2xl:mt-[257px] 3xl:mt-[308px] w-[56%]">
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
          <Line className="bg-blue_600 lg:h-[19px] xl:h-[22px] 2xl:h-[25px] 3xl:h-[29px] xl:mt-[101px] 2xl:mt-[114px] 3xl:mt-[136px] lg:mt-[88px] rounded-bl-[2px] rounded-br-[0] rounded-tl-[2px] rounded-tr-[0] w-[4px]" />
          <Line className="bg-blue_50 lg:h-[592px] xl:h-[677px] 2xl:h-[761px] 3xl:h-[913px] w-[1px]" />
          <Column className="font-roboto lg:ml-[463px] xl:ml-[530px] 2xl:ml-[596px] 3xl:ml-[715px] lg:mt-[432px] xl:mt-[494px] 2xl:mt-[556px] 3xl:mt-[667px] w-[38%]">
            <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-gray_801 w-[auto]">
              Country
            </Text>
            <Row className="border border-gray_400 border-solid items-center justify-between lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] 2xl:p-[10px] 3xl:p-[12px] lg:p-[7px] xl:p-[8px] rounded-radius4 w-[100%]">
              <Text className="font-normal my-[1px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-gray_400 w-[auto]">
                Choose Country
              </Text>
              <Img
                src="images/img_arrowdown_gray_601.svg"
                className="lg:h-[10px] xl:h-[11px] 2xl:h-[13px] 3xl:h-[15px] mr-[4px] w-[1%]"
                alt="arrowdown One"
              />
            </Row>
          </Column>
        </Row>
      </Column>
    </>
  );
};

export default Citchungtab1Page;

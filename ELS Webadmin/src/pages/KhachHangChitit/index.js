import React from "react";

import {
  Column,
  Row,
  Img,
  Text,
  SelectBox,
  Line,
  Stack,
  Input,
} from "components";

const KhachHangChititPage = () => {
  return (
    <>
      <Column className="bg-white_A700 font-poppins items-center mx-[auto] lg:p-[17px] xl:p-[20px] 2xl:p-[23px] 3xl:p-[27px] shadow-bs3 w-[100%]">
        <Row className="2xl:mb-[10px] 3xl:mb-[12px] lg:mb-[7px] xl:mb-[8px] lg:mt-[10px] xl:mt-[12px] 2xl:mt-[14px] 3xl:mt-[16px] w-[98%]">
          <Column className="w-[19%]">
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
            <Column className="lg:ml-[27px] xl:ml-[31px] 2xl:ml-[35px] 3xl:ml-[42px] lg:mt-[58px] xl:mt-[66px] 2xl:mt-[75px] 3xl:mt-[90px] w-[75%]">
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
              <Row className="ml-[2px] lg:mt-[158px] xl:mt-[181px] 2xl:mt-[204px] 3xl:mt-[244px] w-[64%]">
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
          </Column>
          <Line className="bg-blue_600 lg:h-[19px] xl:h-[22px] 2xl:h-[25px] 3xl:h-[29px] lg:mt-[121px] xl:mt-[138px] 2xl:mt-[156px] 3xl:mt-[187px] rounded-bl-[2px] rounded-br-[0] rounded-tl-[2px] rounded-tr-[0] w-[4px]" />
          <Stack className="lg:h-[641px] xl:h-[733px] 2xl:h-[824px] 3xl:h-[989px] lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] w-[81%]">
            <Line className="absolute bg-blue_50 lg:h-[592px] xl:h-[677px] 2xl:h-[761px] 3xl:h-[913px] inset-y-[0] left-[0] my-[auto] w-[1px]" />
            <Row className="absolute inset-x-[0] mx-[auto] lg:pr-[4px] xl:pr-[5px] 2xl:pr-[6px] 3xl:pr-[7px] top-[0] w-[96%]">
              <Column className="lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] w-[71%]">
                <Text className="font-medium lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                  Khách Hàng
                </Text>
                <Text className="font-normal xl:mt-[10px] 2xl:mt-[12px] 3xl:mt-[14px] lg:mt-[9px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Thông tin chi tiết của khách Hàng
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
            <Column className="absolute bottom-[0] font-roboto w-[100%]">
              <Stack className="lg:h-[117px] xl:h-[134px] 2xl:h-[151px] 3xl:h-[181px] lg:ml-[287px] xl:ml-[328px] 2xl:ml-[369px] 3xl:ml-[443px] w-[25%]">
                <Stack className="absolute lg:h-[116px] xl:h-[133px] 2xl:h-[150px] 3xl:h-[179px] top-[1%] w-[100%]">
                  <Column className="absolute bg-white_A700 bottom-[0] items-center justify-end lg:p-[14px] xl:p-[16px] 2xl:p-[19px] 3xl:p-[22px] rounded-radius30 shadow-bs4 w-[100%]">
                    <Text className="font-bold lg:mt-[26px] xl:mt-[30px] 2xl:mt-[34px] 3xl:mt-[40px] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-black_900 w-[auto]">
                      Trần Văn A
                    </Text>
                    <Text className="font-normal lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Nhân viên cấp cao
                    </Text>
                  </Column>
                  <div className="absolute bg-white_A700 lg:h-[57px] xl:h-[65px] 2xl:h-[74px] 3xl:h-[88px] inset-x-[0] mx-[auto] outline outline-[5px] outline-white_A700 rounded-radius3667 top-[0] w-[26%]"></div>
                </Stack>
                <Img
                  src="images/img_ellipse1.png"
                  className="absolute lg:h-[57px] xl:h-[65px] 2xl:h-[74px] 3xl:h-[88px] inset-x-[0] mx-[auto] rounded-radius3667 top-[0] w-[26%]"
                  alt="EllipseOne"
                />
              </Stack>
              <Stack className="font-outfit lg:h-[417px] xl:h-[477px] 2xl:h-[537px] 3xl:h-[644px] lg:mt-[30px] xl:mt-[34px] 2xl:mt-[39px] 3xl:mt-[46px] w-[100%]">
                <Stack className="absolute lg:h-[417px] xl:h-[477px] 2xl:h-[537px] 3xl:h-[644px] w-[100%]">
                  <Column className="absolute bg-white_A700 font-outfit lg:p-[4px] xl:p-[5px] 2xl:p-[6px] 3xl:p-[7px] rounded-radius30 shadow-bs4 top-[2%] w-[100%]">
                    <Row className="items-end justify-end ml-[auto] lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] w-[95%]">
                      <Column className="mb-[2px] w-[69%]">
                        <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                          Họ và Tên
                        </Text>
                        <Input
                          className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                          wrapClassName="mt-[4px] w-[45%]"
                          name="fieldrowwrapp"
                          placeholder="Trần Văn A"
                          size="sm"
                        ></Input>
                      </Column>
                      <Column className="lg:mt-[3px] xl:mt-[4px] 2xl:mt-[5px] 3xl:mt-[6px] w-[31%]">
                        <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                          Email
                        </Text>
                        <Input
                          className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                          wrapClassName="mt-[3px] w-[100%]"
                          type="email"
                          name="email One"
                          placeholder="ATV@gmail.com"
                        ></Input>
                      </Column>
                    </Row>
                    <Row className="justify-end ml-[auto] lg:mt-[55px] xl:mt-[63px] 2xl:mt-[71px] 3xl:mt-[85px] w-[94%]">
                      <Column className="mb-[3px] w-[35%]">
                        <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                          Địa chỉ
                        </Text>
                        <Text className="bg-white_A700 font-medium mt-[4px] lg:pl-[6px] xl:pl-[7px] 2xl:pl-[8px] 3xl:pl-[9px] xl:py-[10px] 2xl:py-[12px] 3xl:py-[14px] lg:py-[9px] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-black_900 w-[320px]">
                          VN
                        </Text>
                      </Column>
                      <Column className="mb-[3px] w-[34%]">
                        <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                          Mật Khẩu
                        </Text>
                        <Input
                          className="font-bold p-[0] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] placeholder:text-bluegray_900 text-bluegray_900 w-[100%]"
                          wrapClassName="mt-[4px] w-[93%]"
                          type="number"
                          name="fieldrowwrapp Two"
                          placeholder="12345698"
                        ></Input>
                      </Column>
                      <Column className="mt-[2px] w-[31%]">
                        <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                          Số điện thoại
                        </Text>
                        <Input
                          className="font-bold p-[0] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] placeholder:text-bluegray_900 text-bluegray_900 w-[100%]"
                          wrapClassName="mt-[4px] w-[100%]"
                          type="number"
                          name="mobileNo"
                          placeholder="0833327665"
                        ></Input>
                      </Column>
                    </Row>
                    <Text className="font-bold lg:ml-[45px] xl:ml-[51px] 2xl:ml-[58px] 3xl:ml-[69px] lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                      Giới tính
                    </Text>
                    <Input
                      className="font-bold p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                      wrapClassName="2xl:mb-[219px] 2xl:ml-[58px] 3xl:mb-[262px] 3xl:ml-[69px] lg:mb-[170px] lg:ml-[45px] mt-[4px] w-[29%] xl:mb-[194px] xl:ml-[51px]"
                      name="fieldrowwrapp Three"
                      placeholder="abc"
                    ></Input>
                  </Column>
                  <Text className="absolute font-extrabold font-roboto left-[43%] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-white_A700 top-[0] w-[auto]">
                    Follow
                  </Text>
                </Stack>
                <Column className="absolute right-[33%] top-[5%] w-[29%]">
                  <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                    Tên đăng nhập
                  </Text>
                  <Input
                    className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                    wrapClassName="mt-[4px] w-[100%]"
                    name="fieldrowwrapp Four"
                    placeholder="TranVanA"
                  ></Input>
                </Column>
              </Stack>
            </Column>
          </Stack>
        </Row>
      </Column>
    </>
  );
};

export default KhachHangChititPage;

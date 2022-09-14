import React from "react";

import {
  Column,
  Row,
  Img,
  Text,
  List,
  Line,
  Stack,
  SelectBox,
  Input,
} from "components";

const TlchChititPage = () => {
  return (
    <>
      <Column className="bg-white_A700 font-poppins items-center mx-[auto] lg:p-[17px] xl:p-[20px] 2xl:p-[23px] 3xl:p-[27px] shadow-bs3 w-[100%]">
        <Row className="items-center lg:my-[10px] xl:my-[11px] 2xl:my-[13px] 3xl:my-[15px] w-[98%]">
          <aside className="items-center w-[19%]">
            <Column className="">
              <Row className="justify-evenly w-[100%]">
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
                    <List
                      className="gap-[0] min-h-[auto] lg:mt-[21px] xl:mt-[24px] 2xl:mt-[28px] 3xl:mt-[33px] w-[95%]"
                      orientation="vertical"
                    >
                      <Row className="justify-end lg:my-[10px] xl:my-[12px] 2xl:my-[14px] 3xl:my-[16px] pl-[2px] py-[2px] w-[100%]">
                        <Img
                          src="images/img_lock.svg"
                          className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] mt-[1px] w-[9%]"
                          alt="lock"
                        />
                        <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[3px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                          Dịch vụ
                        </Text>
                        <Img
                          src="images/img_arrowdown.svg"
                          className="lg:h-[5px] xl:h-[6px] 2xl:h-[7px] 3xl:h-[8px] lg:ml-[62px] xl:ml-[71px] 2xl:ml-[80px] 3xl:ml-[96px] lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] w-[6%]"
                          alt="arrowdown"
                        />
                      </Row>
                      <Row className="justify-between lg:my-[10px] xl:my-[12px] 2xl:my-[14px] 3xl:my-[16px] pl-[2px] py-[2px] w-[100%]">
                        <Img
                          src="images/img_ticket.svg"
                          className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] ml-[1px] w-[9%]"
                          alt="shape"
                        />
                        <Text className="font-medium mt-[1px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                          Chăm sóc viên
                        </Text>
                        <Img
                          src="images/img_arrowdown.svg"
                          className="lg:h-[5px] xl:h-[6px] 2xl:h-[7px] 3xl:h-[8px] lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] w-[6%]"
                          alt="arrowdown One"
                        />
                      </Row>
                    </List>
                    <Row className="ml-[1px] lg:mt-[23px] xl:mt-[26px] 2xl:mt-[30px] 3xl:mt-[36px] w-[99%]">
                      <Img
                        src="images/img_ticket.svg"
                        className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[8%]"
                        alt="shape One"
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
                    <Row className="ml-[3px] lg:mt-[24px] xl:mt-[27px] 2xl:mt-[31px] 3xl:mt-[37px] w-[80%]">
                      <Img
                        src="images/img_music.svg"
                        className="lg:h-[14px] xl:h-[17px] 2xl:h-[19px] 3xl:h-[22px] w-[11%]"
                        alt="music One"
                      />
                      <Text className="font-medium lg:ml-[11px] xl:ml-[13px] 2xl:ml-[15px] 3xl:ml-[18px] mt-[1px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                        Quản lý đặt lịch
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
                <Line className="bg-blue_50 lg:h-[592px] xl:h-[677px] 2xl:h-[761px] 3xl:h-[913px] lg:mt-[32px] xl:mt-[37px] 2xl:mt-[42px] 3xl:mt-[50px] w-[1px]" />
              </Row>
            </Column>
          </aside>
          <Column className="items-center lg:ml-[6px] xl:ml-[7px] 2xl:ml-[8px] 3xl:ml-[9px] lg:mt-[5px] xl:mt-[6px] 2xl:mt-[7px] 3xl:mt-[8px] w-[80%]">
            <Row className="lg:pr-[4px] xl:pr-[5px] 2xl:pr-[6px] 3xl:pr-[7px] w-[96%]">
              <Column className="3xl:mt-[10px] lg:mt-[7px] xl:mt-[8px] 2xl:mt-[9px] w-[71%]">
                <Text className="font-medium lg:text-[21px] xl:text-[24px] 2xl:text-[28px] 3xl:text-[33px] text-black_900 w-[auto]">
                  Đặt lịch
                </Text>
                <Text className="font-normal lg:mt-[10px] xl:mt-[11px] 2xl:mt-[13px] 3xl:mt-[15px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-indigo_300 w-[auto]">
                  Thông tin chi tiết của Đặt lịch
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
            <Row className="font-roboto justify-between lg:mt-[14px] xl:mt-[16px] 2xl:mt-[18px] 3xl:mt-[21px] w-[68%]">
              <Stack className="lg:h-[123px] xl:h-[140px] 2xl:h-[158px] 3xl:h-[189px] lg:mb-[6px] xl:mb-[7px] 2xl:mb-[8px] 3xl:mb-[9px] w-[37%]">
                <div className="absolute bg-white_A700 bottom-[0] xl:h-[101px] 2xl:h-[114px] 3xl:h-[136px] lg:h-[88px] rounded-radius30 shadow-bs4 w-[100%]"></div>
                <Stack className="absolute lg:h-[123px] xl:h-[140px] 2xl:h-[158px] 3xl:h-[189px] w-[100%]">
                  <Column className="absolute bg-white_A700 bottom-[0] items-center justify-end lg:p-[23px] xl:p-[26px] 2xl:p-[30px] 3xl:p-[36px] rounded-radius30 shadow-bs4 w-[100%]">
                    <Text className="font-bold lg:mt-[14px] xl:mt-[16px] 2xl:mt-[18px] 3xl:mt-[21px] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-black_900 w-[auto]">
                      Nguyễn Thị Y
                    </Text>
                    <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                      Người đặt lịch
                    </Text>
                  </Column>
                  <Img
                    src="images/img_ellipse1.png"
                    className="absolute lg:h-[57px] xl:h-[65px] 2xl:h-[74px] 3xl:h-[88px] inset-x-[0] mx-[auto] rounded-radius3667 top-[0] w-[26%]"
                    alt="EllipseOne"
                  />
                </Stack>
              </Stack>
              <Stack className="lg:h-[123px] xl:h-[140px] 2xl:h-[158px] 3xl:h-[189px] lg:mt-[6px] xl:mt-[7px] 2xl:mt-[8px] 3xl:mt-[9px] w-[37%]">
                <Column className="absolute bg-white_A700 bottom-[0] items-center justify-end lg:p-[24px] xl:p-[28px] 2xl:p-[32px] 3xl:p-[38px] rounded-radius30 shadow-bs4 w-[100%]">
                  <Text className="font-bold lg:mt-[12px] xl:mt-[14px] 2xl:mt-[16px] 3xl:mt-[19px] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-black_900 w-[auto]">
                    Trần Thị A
                  </Text>
                  <Text className="font-normal not-italic xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-black_900 w-[auto]">
                    Nhân viên chăm sóc
                  </Text>
                </Column>
                <Img
                  src="images/img_ellipse1.png"
                  className="absolute lg:h-[57px] xl:h-[65px] 2xl:h-[74px] 3xl:h-[88px] inset-x-[0] mx-[auto] rounded-radius3667 top-[0] w-[26%]"
                  alt="EllipseOne One"
                />
              </Stack>
            </Row>
            <Stack className="font-outfit lg:h-[415px] xl:h-[475px] 2xl:h-[534px] 3xl:h-[640px] lg:mt-[25px] xl:mt-[29px] 2xl:mt-[33px] 3xl:mt-[39px] w-[100%]">
              <Stack className="absolute lg:h-[415px] xl:h-[475px] 2xl:h-[534px] 3xl:h-[640px] w-[100%]">
                <Column className="absolute bg-white_A700 font-outfit lg:p-[11px] xl:p-[13px] 2xl:p-[15px] 3xl:p-[18px] rounded-radius30 shadow-bs4 top-[2%] w-[100%]">
                  <Row className="items-center lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] mt-[2px] w-[96%]">
                    <Column className="mb-[2px] w-[69%]">
                      <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                        Người được chăm sóc
                      </Text>
                      <Input
                        className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                        wrapClassName="mt-[4px] w-[45%]"
                        name="fieldrowwrapp"
                        placeholder="Nguyễn Thị B"
                        size="md"
                      ></Input>
                    </Column>
                    <Column className="mt-[2px] w-[31%]">
                      <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                        Giá thuê(VND/giờ)
                      </Text>
                      <Input
                        className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                        wrapClassName="mt-[4px] w-[100%]"
                        name="fieldrowwrapp One"
                        placeholder="100.000"
                      ></Input>
                    </Column>
                  </Row>
                  <Row className="lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] lg:mt-[54px] xl:mt-[62px] 2xl:mt-[70px] 3xl:mt-[84px] w-[96%]">
                    <Column className="my-[2px] w-[35%]">
                      <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                        Địa chỉ chăm sóc
                      </Text>
                      <Text className="bg-white_A700 font-medium mt-[4px] lg:pl-[6px] xl:pl-[7px] 2xl:pl-[8px] 3xl:pl-[9px] xl:py-[10px] 2xl:py-[12px] 3xl:py-[14px] lg:py-[9px] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] text-black_900 w-[320px]">
                        VN
                      </Text>
                    </Column>
                    <Column className="mb-[3px] w-[34%]">
                      <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                        Tổng tiền(VNĐ)
                      </Text>
                      <Input
                        className="font-bold p-[0] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] placeholder:text-bluegray_900 text-bluegray_900 w-[100%]"
                        wrapClassName="mt-[4px] w-[93%]"
                        name="fieldrowwrapp Three"
                        placeholder="300.000"
                      ></Input>
                    </Column>
                    <Column className="mt-[3px] w-[31%]">
                      <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                        Ghi chú
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
                  <Text className="font-bold lg:ml-[31px] xl:ml-[35px] 2xl:ml-[40px] 3xl:ml-[48px] lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                    Đánh giá{" "}
                  </Text>
                  <Input
                    className="font-bold p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                    wrapClassName="2xl:mb-[207px] 2xl:ml-[40px] 3xl:mb-[248px] 3xl:ml-[48px] lg:mb-[161px] lg:ml-[31px] mt-[4px] w-[30%] xl:mb-[184px] xl:ml-[35px]"
                    name="fieldrowwrapp Four"
                    placeholder="34 lượt (4.5 ⭐)"
                    size="md"
                  ></Input>
                </Column>
                <Text className="absolute font-extrabold font-roboto left-[42%] lg:text-[14px] xl:text-[16px] 2xl:text-[18px] 3xl:text-[21px] text-white_A700 top-[0] w-[auto]">
                  Follow
                </Text>
              </Stack>
              <Column className="absolute inset-x-[0] mx-[auto] top-[5%] w-[29%]">
                <Text className="font-bold xl:text-[10px] 2xl:text-[12px] 3xl:text-[14px] lg:text-[9px] text-bluegray_900 w-[auto]">
                  Dịch vụ chăm sóc
                </Text>
                <Input
                  className="font-medium p-[0] lg:text-[10px] xl:text-[12px] 2xl:text-[14px] 3xl:text-[16px] placeholder:text-black_900 text-black_900 w-[100%]"
                  wrapClassName="mt-[4px] w-[100%]"
                  name="fieldrowwrapp Five"
                  placeholder="Nấu ăn, trò chuyện"
                  size="md"
                ></Input>
              </Column>
            </Stack>
          </Column>
        </Row>
      </Column>
    </>
  );
};

export default TlchChititPage;

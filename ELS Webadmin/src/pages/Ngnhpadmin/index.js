import React from "react";
import IconButton from '@mui/material/IconButton';
import TextField from '@mui/material/TextField';
import InputAdornment from '@mui/material/InputAdornment';
import Visibility from '@mui/icons-material/Visibility';
import VisibilityOff from '@mui/icons-material/VisibilityOff';
import { Stack, Column, Row, Img, Text, Line } from "components";
import { FormControl, InputLabel, OutlinedInput } from "@mui/material";



const NgnhpadminPage = () => {
  const [values, setValues] = React.useState({
    amount: '',
    password: '',
    weight: '',
    weightRange: '',
    showPassword: false,
  });

  const handleChange = (prop) => (event) => {
    setValues({ ...values, [prop]: event.target.value });
  };

  const handleClickShowPassword = () => {
    setValues({
      ...values,
      showPassword: !values.showPassword,
    });
  };

  const handleMouseDownPassword = (event) => {
    event.preventDefault();
  };
  return (
    <>
      <Stack className="bg-gray_50 font-roboto 3xl:h-[1081px] lg:h-[700px] xl:h-[801px] 2xl:h-[901px] mx-[auto] lg:pr-[47px] xl:pr-[54px] 2xl:pr-[61px] 3xl:pr-[73px] w-[100%]">
        <Stack className="absolute 3xl:h-[1081px] lg:h-[700px] xl:h-[801px] 2xl:h-[901px] left-[0] w-[69%]">
          <Stack className="absolute 3xl:h-[1081px] lg:h-[700px] xl:h-[801px] 2xl:h-[901px] left-[0] w-[92%]">
            <Column className="absolute bg-purple_900 left-[0] lg:p-[28px] xl:p-[32px] 2xl:p-[37px] 3xl:p-[44px] w-[81%]">
              <Row className="items-end lg:ml-[3px] xl:ml-[4px] 2xl:ml-[5px] 3xl:ml-[6px] w-[31%]">
                <Img
                  src="images/img_location.svg"
                  className="lg:h-[25px] xl:h-[29px] 2xl:h-[33px] 3xl:h-[39px] mb-[4px] w-[14%]"
                  alt="location"
                />
                <Text className="capitalize font-bold lg:ml-[5px] xl:ml-[6px] 2xl:ml-[7px] 3xl:ml-[8px] lg:mt-[4px] xl:mt-[5px] 2xl:mt-[6px] 3xl:mt-[7px] lg:text-[23px] xl:text-[26px] 2xl:text-[30px] 3xl:text-[36px] text-white_A700 w-[auto]">
                  ElderlySitter
                </Text>
              </Row>
              <Img
                src="images/img_saly3.png"
                className="lg:h-[200px] xl:h-[228px] 2xl:h-[257px] 3xl:h-[308px] lg:mb-[322px] xl:mb-[368px] 2xl:mb-[414px] 3xl:mb-[497px] lg:ml-[112px] xl:ml-[128px] 2xl:ml-[144px] 3xl:ml-[172px] lg:mr-[189px] xl:mr-[217px] 2xl:mr-[244px] 3xl:mr-[292px] xl:mt-[105px] 2xl:mt-[119px] 3xl:mt-[142px] lg:mt-[92px] w-[41%]"
                alt="SalyThree"
              />
            </Column>
            <Line className="absolute bg-black_900 h-[1px] inset-y-[0] my-[auto] right-[0] w-[82%]" />
          </Stack>
          <Column className="absolute bg-white_A700 font-poppins h-[max-content] inset-y-[0] my-[auto] lg:p-[34px] xl:p-[39px] 2xl:p-[44px] 3xl:p-[52px] right-[0] rounded-radius40 shadow-bs1 w-[54%]">
            <label className="font-normal lg:mt-[12px] xl:mt-[14px] 2xl:mt-[16px] 3xl:mt-[19px] not-italic lg:text-[15px] xl:text-[17px] 2xl:text-[20px] 3xl:text-[24px] text-black_900 w-[auto]">
              Chào mừng trở lại
            </label>
            <label className="font-medium lg:mt-[14px] xl:mt-[16px] 2xl:mt-[18px] 3xl:mt-[21px] lg:text-[42px] xl:text-[48px] 2xl:text-[55px] 3xl:text-[66px] text-black_900 w-[auto]">
              Đăng nhập
            </label>
            <TextField className="font-normal lg:mt-[33px] xl:mt-[38px] 2xl:mt-[43px] 3xl:mt-[51px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]" label="Tên tài khoản hoặc địa chỉ email" placeholder="Tên tài khoản hoặc địa chỉ email" multiline />
            <br />
            <FormControl className="font-normal lg:mt-[31px] xl:mt-[35px] 2xl:mt-[40px] 3xl:mt-[48px] not-italic lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-black_900 w-[auto]">
              <InputLabel htmlFor="outlined-adornment-password">Mật khẩu</InputLabel>
              <OutlinedInput
                id="outlined-adornment-password"
                type={values.showPassword ? 'text' : 'password'}
                value={values.password}
                onChange={handleChange('password')}
                endAdornment={
                  <InputAdornment position="end">
                    <IconButton
                      aria-label="toggle password visibility"
                      onClick={handleClickShowPassword}
                      onMouseDown={handleMouseDownPassword}
                      edge="end"
                    >
                      {values.showPassword ? <VisibilityOff /> : <Visibility />}
                    </IconButton>
                  </InputAdornment>
                }
                label="Password"
              />
            </FormControl>
            
            <Column className="bg-orange_700 items-end justify-end lg:mb-[118px] xl:mb-[135px] 2xl:mb-[152px] 3xl:mb-[182px] lg:mt-[24px] xl:mt-[28px] 2xl:mt-[32px] 3xl:mt-[38px] lg:p-[12px] xl:p-[14px] 2xl:p-[16px] 3xl:p-[19px] rounded-radius10 shadow-bs2 w-[100%]">
              <button className="font-medium lg:mr-[115px] xl:mr-[131px] 2xl:mr-[148px] 3xl:mr-[177px] mt-[4px] lg:text-[12px] xl:text-[14px] 2xl:text-[16px] 3xl:text-[19px] text-white_A700 w-[auto]">
                Đăng nhập
              </button>
            </Column>
          </Column>
        </Stack>
        <Img
          src="images/img_saly2.png"
          className="absolute lg:h-[350px] xl:h-[401px] 2xl:h-[451px] 3xl:h-[541px] right-[0] top-[16%] lg:w-[350px] xl:w-[400px] 2xl:w-[450px] 3xl:w-[540px]"
          alt="SalyTwo"
        />
      </Stack>
    </>
  );
};

export default NgnhpadminPage;

import React from "react";
import PropTypes from "prop-types";

const shapes = { icbRoundedBorder12: "rounded-radius12" };
const variants = {
  icbOutlineIndigo3001e: "bg-white_A700 shadow-bs",
  FillGreenA700: "bg-green_A700 text-white_A700",
  FillIndigoA400: "bg-indigo_A400 text-white_A700",
  FillRedA700: "bg-red_A700 text-white_A700",
};
const sizes = {
  smIcn: "xl:p-[10px] p-[12px] 3xl:p-[14px] lg:p-[9px]",
  sm: "p-[10px] 3xl:p-[12px] lg:p-[7px] xl:p-[8px]",
};

const Button = ({
  children,
  className = "",
  leftIcon,
  rightIcon,
  shape,
  variant,
  size,
  ...restProps
}) => {
  return (
    <button
      className={`${className} ${shapes[shape] || ""} ${
        variants[variant] || ""
      } ${sizes[size] || ""} common-button `}
      {...restProps}
    >
      {!!leftIcon && leftIcon}
      {children}
      {!!rightIcon && rightIcon}
    </button>
  );
};

Button.propTypes = {
  className: PropTypes.string,
  children: PropTypes.node,
  shape: PropTypes.oneOf(["icbRoundedBorder12"]),
  variant: PropTypes.oneOf([
    "icbOutlineIndigo3001e",
    "FillGreenA700",
    "FillIndigoA400",
    "FillRedA700",
  ]),
  size: PropTypes.oneOf(["smIcn", "sm"]),
};
Button.defaultProps = {
  className: "",
  shape: "",
  variant: "icbOutlineIndigo3001e",
  size: "smIcn",
};

export { Button };

import { ErrorMessage } from "../../components/ErrorMessage";
import React from "react";
import PropTypes from "prop-types";

const variants = { OutlineGray800: "bg-white_A700" };

const sizes = {
  sm: "lg:pb-[10px] xl:pb-[12px] pb-[14px] 3xl:pb-[16px] pt-[10px] 3xl:pt-[12px] lg:pt-[7px] xl:pt-[8px] px-[10px] 3xl:px-[12px] lg:px-[7px] xl:px-[8px]",
  md: "p-[11px] 3xl:p-[13px] lg:p-[8px] xl:p-[9px]",
  lg: "pb-[11px] 3xl:pb-[13px] lg:pb-[8px] xl:pb-[9px] lg:pt-[10px] xl:pt-[12px] pt-[14px] 3xl:pt-[16px] px-[11px] 3xl:px-[13px] lg:px-[8px] xl:px-[9px]",
};

const Input = React.forwardRef(
  (
    {
      wrapClassName = "",
      className = "",
      name,
      placeholder,
      type = "text",
      children,
      errors = [],
      label = "",
      prefix,
      suffix,
      variant,
      size,
      ...restProps
    },
    ref
  ) => {
    return (
      <>
        <div
          className={`${wrapClassName}  ${variants[variant] || ""} ${
            sizes[size] || ""
          }`}
        >
          {!!label && label}
          {!!prefix && prefix}
          <input
            ref={ref}
            className={`${className} bg-transparent border-0`}
            type={type}
            name={name}
            placeholder={placeholder}
            {...restProps}
          />
          {!!suffix && suffix}
        </div>
        {!!errors && <ErrorMessage errors={errors} />}
      </>
    );
  }
);

Input.propTypes = {
  wrapClassName: PropTypes.string,
  className: PropTypes.string,
  name: PropTypes.string,
  placeholder: PropTypes.string,
  type: PropTypes.string,
  variant: PropTypes.oneOf(["OutlineGray800"]),
  size: PropTypes.oneOf(["sm", "md", "lg"]),
};
Input.defaultProps = {
  wrapClassName: "",
  className: "",
  name: "",
  placeholder: "",
  type: "text",
  variant: "OutlineGray800",
  size: "lg",
};

export { Input };

import React, { useState, useEffect } from 'react'
import { Tabs, Tab, Button } from "@mui/material"
import { Link } from "react-router-dom"
import { Fragment } from "react"

const TabBar = (props) => {
  const tabValue = props.tabValue;

  return (
    <Fragment>
      <Tabs value={tabValue}>
        <Tab value={0} component={Link} to="/" label="Home" />
        <Tab value={1} component={Link} to="/blog" label="Blog" />
        <Tab value={2} component={Link} to="/events" label="Events" />
        <Tab value={3} component={Link} to="/about" label="About Us" />
        <Tab value={4} component={Link} to="/profile" label="My Profile" />
      </Tabs>
      <br/>
    </Fragment>
  );
};

export default TabBar;

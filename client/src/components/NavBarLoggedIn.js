import React from "react";
import { Link } from "react-router-dom";
import styled from "styled-components";
import { Button } from "../styles";
import "../styles/DarkMode.css";

function NavBarLoggedIn({ user, setUser }) {

  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  return (
 
    <Wrapper>
      <Logo>
        <Link to="/">BirdView</Link>
      </Logo>
        <Nav>
          <Button as={Link} to="/dashboard">
            Dashboard
          </Button>
          <Button as={Link} to="/about">
            About
          </Button>
          <Button as={Link} to="/contact">
            Contact
          </Button>
          <Button variant="outline" onClick={handleLogoutClick}>
            Logout
          </Button>
        </Nav>
    </Wrapper>
    
  );
}

const Wrapper = styled.header`
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 8px;
`;

const Logo = styled.h1`
  font-family: Chunkfive, sans;
  font-size: 3rem;
  color: CadetBlue;
  margin: 0;
  line-height: 1;
  text-shadow: 1px 1px 1px;
  display: inline-block;
  width: 100%;
  // text-align: left;

  a {
    color: inherit;
    text-decoration: none;
    position: relative;
  }
`;


const Nav = styled.nav`
  display: flex;
  gap: 4px;
  position: absolute;
  right: 8px;
`;

export default NavBarLoggedIn;

import React, { useState, useRef, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import '../index.css';
import Logo from '../images/reserv-logo.png';
import MenuIcon from '../images/menu.png';
import ProfileIcon from '../images/profile-icon.png';

const NavBar = () => {
    const location = useLocation();

    const showIcons = location.pathname === '/' || location.pathname === '/Login' || location.pathname === '/CreateAccount';

    const [isMenuOpen, setIsMenuOpen] = useState(false);
    const menuRef = useRef(null);

    const toggleMenu = () => {
      setIsMenuOpen(!isMenuOpen);
    };

    const closeMenu = () => {
      setIsMenuOpen(false);
    };

    useEffect(() => {
      // Add event listener to the document body to close the menu when a click occurs outside the menu
      document.body.addEventListener('click', closeMenu);

      // Cleanup the event listener when the component unmounts
      return () => {
        document.body.removeEventListener('click', closeMenu);
      };
    }, []);

    // Prevent the click event from propagating to the body and closing the menu
    const stopPropagation = (e) => {
      e.stopPropagation();
    };

    return (
      <nav className="navbar-container">
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
        <link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@400;700&display=swap" rel="stylesheet"></link>
        <div className="navbar-left-align">
          <a href="/">
            <img className="navbar-logo" href="/" src={ Logo } alt="Logo"/>
          </a>
        </div>
        <div className="navbar-right-align">
          { showIcons ? (
            <ul className="navbar-links">
              <li className="navbar-button">
                <Link to="/Login">
                  <button className="navbar-sign-in-button">Sign In</button>
                </Link>
              </li>
              <li className="navbar-button">
                  <Link to="/CreateAccount">
                    <button className="navbar-sign-up-button">Sign Up</button>
                  </Link>
              </li>
            </ul>
          ):(
            <ul className="navbar-links" onClick={stopPropagation} ref={menuRef}>
              <div className="navbar-menu-container">
                <button className="navbar-menu-button" onClick={toggleMenu}>
                  <img src={MenuIcon} alt="Menu" className="navbar-icon"/>
                </button>
              </div>
              
              <li className="navbar-button">
                <img src={ProfileIcon} alt="Profile" className="navbar-icon"/>
              </li>
            </ul>
          )}
          {isMenuOpen && (
            <div className="navbar-menu">

              <Link to="/OrgHomePage">
                <button className="navbar-menu-text" onClick={toggleMenu}>Home</button>
              </Link>
              <Link to="/OrgSearchPage">
                <button className="navbar-menu-text" onClick={toggleMenu}>Search for Rooms</button>
              </Link>
              <Link to="/OrgReservationsPage">
                <button className="navbar-menu-text" onClick={toggleMenu}>Manage Reservation</button>
              </Link>
              <Link to="/OrgProfilePage">
                <button className="navbar-menu-text" onClick={toggleMenu}>View Profile</button>
              </Link>
              <Link to="/">
                <button className="navbar-menu-text" onClick={toggleMenu}>Log Out</button>
              </Link>

            </div>
          )}
        </div>
      </nav>
    );
  };

export default NavBar;
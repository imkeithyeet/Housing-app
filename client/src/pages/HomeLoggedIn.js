import { useEffect, useState } from "react";
import ReactMarkdown from "react-markdown";
import { Link } from "react-router-dom";
import styled from "styled-components";
import { Box, Button } from "../styles";
import "../styles/HomeLoggedIn.css"

function HomeLoggedIn({ user }) {
  const [homes, setHomes] = useState([]);

  useEffect(() => {
    fetch("/homes")
      .then((r) => r.json())
      .then(setHomes);
  }, [user]);

  return (
    <Wrapper>
      {user && (
        <div>
          <h1 className="title">Welcome, {user.email}!</h1>
            <h1 className="second">Browse our Catalogue of Homes: </h1>
            <Wrapper>
      {homes.length > 0 ? (
        homes.map((home) => (
          <Recipe key={home.id}>
            <h1>{home.address}</h1>
            <Box>
              <img
                src={home.photos.map((photo) => photo.image_url)}
                alt={home.bio}
                className="homeListListings"
              />
              <ul>By {home.user.email}</ul>
              <ReactMarkdown>{home.bio}</ReactMarkdown>
              <div className= "ListingButton">
                  <Button as={Link} to={`/homes?id=${home.id}`} >
                    View Full Listing
                  </Button>
                </div>
            </Box>
        
          </Recipe>
        ))
      ) : (
        <>
          <h2>No Homes Found</h2>
          <Button as={Link} to="/new">
            List your Home!
          </Button>
        </>
      )}
    </Wrapper>
            </div>
            )}
    </Wrapper>
  );
}

const Wrapper = styled.section`
  max-width: 800px;
  margin: 40px auto;
`;

const Recipe = styled.article`
  margin-bottom: 24px;
`;

export default HomeLoggedIn;


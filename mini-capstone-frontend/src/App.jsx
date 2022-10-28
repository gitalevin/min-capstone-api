import { Header } from "./Header";
import { Home } from "./Home";
import { Footer } from "./Footer";
import { Signup } from "./Signup";
import { Login } from "./Login";
import { LogoutLink } from "./LogoutLink";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { About } from "./About";

function App() {
  return (
    <div>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
        </Routes>
        <Footer />
      </BrowserRouter>
      <Signup />
      <Login />
      <LogoutLink />
    </div>
  );
}

export default App;

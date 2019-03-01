import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["GETTING TOGETHER WITH PEOPLE IN REAL LIFE.", "LET MAGIC HAPPEN.", "HAVE FRUITFUL DISCUSSIONS."],
    typeSpeed: 80,
    loop: true,
  });
};

export { loadDynamicBannerText };

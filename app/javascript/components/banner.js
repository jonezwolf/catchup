import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: [" TOGETHER WITH PEOPLE IN REAL LIFE.", " THE MAGIC.", " FRUITFUL DISCUSSIONS."],
    typeSpeed: 50,
    loop: true,
  });
};

export { loadDynamicBannerText };

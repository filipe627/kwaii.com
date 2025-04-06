{
  "name": "kwaii.site",
  "version": "1.0.0",
  "public": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "latest",
    "react": "latest",
    "react-dom": "latest",
    "tailwindcss": "latest"
  },
  "devDependencies": {
    "autoprefixer": "latest",
    "postcss": "latest"
  },
}import { useState } from "react";

export default function Home() {
  const [likes, setLikes] = useState(0);
  const [dislikes, setDislikes] = useState(0);

  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-4">
      <h1 className="text-2xl font-bold mb-4">Bem-vindo ao KWAII</h1>
      <p className="mb-4">Ganhe dinheiro avaliando vídeos!</p>
      <div className="flex gap-4">
        <button onClick={() => setLikes(likes + 1)} className="bg-green-500 text-white p-2 rounded">
          Curtir ({likes})
        </button>
        <button onClick={() => setDislikes(dislikes + 1)} className="bg-red-500 text-white p-2 rounded">
          Não Curtir ({dislikes})
        </button>
      </div>
    </div>
  );
},
module.exports = {
  content: ["./pages/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [],
};
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
};
@tailwind base;
@tailwind components;
@tailwind utilities;
module.exports = {
  reactStrictMode: true,
};
npm install
npm run dev

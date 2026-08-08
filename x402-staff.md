---
lfx_committee_url: https://projectadmin.lfx.linuxfoundation.org/project/lfXoAq207KdyoiL9B9/collaboration/committees/573cdfa4-28c5-43b0-be17-fc495abc0002
filter: all
---

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<style>
lf-committee-gallery {
    display: grid !important;
    grid-template-columns: repeat(3, 1fr) !important; /* Reduced from 4 to 3 to make cards bigger */
    gap: 32px !important;
    row-gap: 40px !important;
    font-family: "Inter", sans-serif !important;
    padding: 20px 0 !important;
    box-sizing: border-box !important;
}
lf-committee-gallery * {
    box-sizing: border-box !important;
}
lf-committee-gallery > div {
    background: #ffffff !important;
    border: 1px solid #e2e4e8 !important;
    border-radius: 12px !important; /* Slightly rounder outer edges */
    box-shadow: 0 4px 6px rgba(0,0,0,0.05) !important; /* Subtle shadow */
    display: flex !important;
    flex-direction: column !important;
    overflow: hidden !important;
    height: 100% !important;
    min-width: 0 !important;
    position: relative !important;
    margin: 0 !important;
    transition: transform 0.2s ease, box-shadow 0.2s ease, border-color 0.2s ease !important;
}
lf-committee-gallery > div:hover {
    border-color: #b9bec7 !important;
    box-shadow: 0 8px 15px rgba(0,0,0,0.1) !important; /* Lift effect on hover */
    transform: translateY(-4px) !important;
}
lf-committee-gallery img {
    width: 200px !important;
    height: 200px !important;
    border-radius: 50% !important; /* Transforms the image into a circle */
    object-fit: cover !important;
    margin: 32px auto 10px auto !important; /* Centers the circle inside the card */
    background-color: #f4f5f6 !important;
    border: 4px solid #f4f5f6 !important; /* Creates a clean border ring around the image */
}
lf-committee-gallery h2,
lf-committee-gallery h3,
lf-committee-gallery p {
    font-family: "Inter", sans-serif !important;
    margin: 0 !important;
    padding: 0 !important;
    text-align: center !important; /* Centers text to match the circular image */
}
lf-committee-gallery div:has(h2) {
    padding: 0 20px 30px 20px !important;
    display: flex !important;
    flex-direction: column !important;
    flex-grow: 1 !important;
    align-items: center !important;
}
lf-committee-gallery h2 {
    order: 1 !important;
    font-size: 1.5rem !important; /* Larger font size */
    font-weight: 700 !important; /* Bolder text */
    color: #111111 !important;
    margin-bottom: 8px !important;
}
lf-committee-gallery p {
    order: 2 !important;
    font-size: 1rem !important;
    font-weight: 500 !important;
    color: #444444 !important; /* Company name color */
    margin-bottom: 6px !important;
}
lf-committee-gallery h3 {
    order: 3 !important;
    font-size: 0.95rem !important;
    font-weight: 400 !important;
    font-style: italic !important; /* Title in italics */
    color: #666666 !important;
}
@media (max-width: 1024px) {
    lf-committee-gallery { grid-template-columns: repeat(2, 1fr) !important; }
}
@media (max-width: 600px) {
    lf-committee-gallery { grid-template-columns: 1fr !important; }
}
</style>

---
lfx_committee_url: https://projectadmin.lfx.linuxfoundation.org/project/lfx8PfPcaAAbevANl3/collaboration/committees/2bd73af3-40ca-4a6a-bec6-9c4483f29465
render: newsite
---
<style>
/* Hide the grid modal wrapper */
.awsm-grid-modal.awsm-grid.modal-style.style-1.grid-4-col {
    display: none;
}

/* Main container: wrap cards in a centered flex row */
.awsm-modal-items-main {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: flex-start;
    gap: 2rem;
    text-align: center;
}

/* Each member card */
.awsm-modal-content-main {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    width: 140px;
}

/* Circular headshot */
.awsm-modal-items-main img,
.awsm-modal-content-main img {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    object-fit: cover;
    display: block;
    margin: 0 auto 0.6rem auto;
}

/* Member name */
.awsm-modal-items-main h2,
.awsm-modal-content-main h2 {
    font-size: 15px;
    font-weight: 600;
    margin: 0 0 0.2rem 0;
    line-height: 1.3;
}

/* Company / organization */
.awsm-modal-details,
.awsm-modal-content-main .awsm-modal-details {
    font-size: 13px;
    color: #555;
    margin: 0;
    text-align: center;
}

/* Role label (underlined, shown above name if present) */
.committee_member-role {
    display: block;
    font-size: 12px;
    text-decoration: underline;
    margin-bottom: 0.3rem;
    color: #777;
}

/* Hide the close/span overlay button */
.awsm-modal-items-main > span {
    display: none;
}

/* Responsive: tighten gap on small screens */
@media (max-width: 600px) {
    .awsm-modal-items-main {
        gap: 1.25rem;
    }
    .awsm-modal-content-main {
        width: 110px;
    }
    .awsm-modal-items-main img,
    .awsm-modal-content-main img {
        width: 80px;
        height: 80px;
    }
}
</style>

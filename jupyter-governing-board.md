---
lfx_committee_url: https://projectadmin.lfx.linuxfoundation.org/project/lfx8PfPcaAAbevANl3/collaboration/committees/2bd73af3-40ca-4a6a-bec6-9c4483f29465
render: newsite
---
<style>

h2 {
    font-size: 1.5rem;
}

h3 {
    font-size: 1.17rem;
}

/* Hide the grid modal wrapper */
.awsm-grid-modal {
    display: none;
}

/* Main container: wrap cards in a centered flex row */
.awsm-modal-items-main {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: flex-start;
    gap: 3rem;
    text-align: center;
}

/* Each member card */
.awsm-modal-content-main {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    width: 8.75rem;
}

/* Circular headshot */
.awsm-modal-items-main img,
.awsm-modal-content-main img {
    width: 6.25rem;
    height: 6.25rem;
    border-radius: 50%;
    object-fit: cover;
    display: block;
    margin: 0 auto 0.6rem auto;
}

/* Member name */
.awsm-modal-items-main h2,
.awsm-modal-content-main h2 {
    margin: 0 0 0.2rem 0;
    line-height: 1.3;
}

/* Company / organization */
.awsm-modal-details,
.awsm-modal-content-main .awsm-modal-details {
    color: #555;
    margin: 0;
    text-align: center;
}

/* Role label (underlined, shown above name if present) */
.committee_member-role {
    display: block;
    text-decoration: underline;
    padding-bottom: 1rem;
    color: #777;
}

/* Hide the close/span overlay button */
.awsm-modal-items-main > span {
    display: none;
}

/* Responsive: tighten gap on small screens */
@media (max-width: 600px) {
    .awsm-modal-items-main {
        gap: 3rem;
    }
    .awsm-modal-content-main {
        width: 6.875rem;
    }
    .awsm-modal-items-main img,
    .awsm-modal-content-main img {
        width: 5rem;
        height: 5rem;
    }
}
</style>

<div class="team-col__container">
<div class="flex-row jc--space-between">
{% for committee_member in include.committee_members %}
              <div class="bg--fourth col2
                          team__item
                          align--center" style="height: 394.656px;">
                <a class="team__display" href="#team-bio-{{ committee_member.FirstName | append: " " | append: committee_member.LastName | slugify }}">
                  <div class="member--image">
                 <img src="{%- include snippets/headshot.html profile_image=committee_member.LogoURL member_id=committee_member.MemberID %}">
                  </div>
                  <div class="pb--xs">
                    <div class="team-col__full-name text-color--white">{{ committee_member.FirstName }} {{ committee_member.LastName }}</div>
                    <div class="team-col__title text-color--white">
                      <i>{{ committee_member.Title }}, {{ committee_member.Organization.Name }}</i>
                    </div>
                  </div>
                </a>
              </div>
          
             <!-- popup modal starts here --->
              <div id="team-bio-{{ committee_member.FirstName | append: " " | append: committee_member.LastName | slugify }}" class="team-col__hidden_bio
                           bg--white">
                  <a class="popup-modal-dismiss" href="#">
                     <svg style="enable-background:new 0 0 460.775 460.775;" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 460.775 460.775" xml:space="preserve">
                      <path d="M285.08,230.397L456.218,59.27c6.076-6.077,6.076-15.911,0-21.986L423.511,4.565c-2.913-2.911-6.866-4.55-10.992-4.55  c-4.127,0-8.08,1.639-10.993,4.55l-171.138,171.14L59.25,4.565c-2.913-2.911-6.866-4.55-10.993-4.55  c-4.126,0-8.08,1.639-10.992,4.55L4.558,37.284c-6.077,6.075-6.077,15.909,0,21.986l171.138,171.128L4.575,401.505  c-6.074,6.077-6.074,15.911,0,21.986l32.709,32.719c2.911,2.911,6.865,4.55,10.992,4.55c4.127,0,8.08-1.639,10.994-4.55  l171.117-171.12l171.118,171.12c2.913,2.911,6.866,4.55,10.993,4.55c4.128,0,8.081-1.639,10.992-4.55l32.709-32.719  c6.074-6.075,6.074-15.909,0-21.986L285.08,230.397z"></path></svg>
                  </a>
                  <div class="flex-row">
                    
                    <div class="col4 team-col__popup-content-left">
                    <div class="modal__team-img">
                      <img src="{%- include snippets/headshot.html profile_image=committee_member.LogoURL member_id=committee_member.MemberID %}">
                     </div>
                     <div class="modal__social-icons">
                       
                       
                       
                     </div> 
                    </div>
                    
                    <div class="col8 team-col__popup-content-right">
                     <div class="team-col__bio-title">
                    
                      <div class="modal__team-name">
                        <h3 class="team-col__full-name">
                            {{ committee_member.FirstName }} {{ committee_member.LastName }}
                        </h3>
                      </div>
                      <div class="modal__team-title">
                        <p class="team-col__title">
                            {{ committee_member.Title }}, {{ committee_member.Organization.Name }}
                        </p>
                      </div>
                      <div class="modal__team-bio">
                        <p class="team-col__bio">
                            </p><p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;{{ committee_member.AboutMe.Description }}&quot;}" data-sheets-userformat="{&quot;2&quot;:15037,&quot;3&quot;:{&quot;1&quot;:0},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:2,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:0},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:8}">{{ committee_member.AboutMe.Description }} </span></p>
<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;{{ committee_member.AboutMe.Description }}&quot;}" data-sheets-userformat="{&quot;2&quot;:15037,&quot;3&quot;:{&quot;1&quot;:0},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:2,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:0},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:8}">{{ committee_member.AboutMe.Description }} </span></p>
<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;{{ committee_member.AboutMe.Description }}&quot;}" data-sheets-userformat="{&quot;2&quot;:15037,&quot;3&quot;:{&quot;1&quot;:0},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10132122}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:2,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:0},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:8}">He also regularly interacts with other open source embedded projects such as AGL, yocto, SPDX, Zephyr and Xen, and represents the Linux Foundation's ELISA project as chair of the technical steering committee.</span></p>
                        <p></p>
                      </div>
                    </div>
                   </div>
                    
                  </div>
              </div>
              <!-- popup modal end here --->
{% endfor %}          
           </div>
</div>

# MenderCon 2026 Update Plan

## Overview
Update the MenderCon website from 2025 to 2026, archive 2025 content, and prepare the site for the new conference year.

## Date & Event Information
- **New Date**: May 14, 2026
- **Current Date**: May 15, 2025
- **Status**: Save the Date phase (tickets not yet available)

---

## Tasks

### 1. Update Configuration Files

#### 1.1 Update `_config.yml`
**File**: [_config.yml](_config.yml)

- [x] **Line 51**: Change `eventDate: "May 15, 2025"` to `eventDate: "May 14, 2026"`
- [x] **Line 100**: Change `mastodonHashTag: "MenderCon2025"` to `mastodonHashTag: "MenderCon2026"`
- [x] **Line 103**: Change `mastodonFeedUrl: "tags/MenderCon2025"` to `mastodonFeedUrl: "tags/MenderCon2026"`
- [x] **Line 104**: Change `mastodonFeedApiUrl: "api/v1/timelines/tag/MenderCon2025"` to `mastodonFeedApiUrl: "api/v1/timelines/tag/MenderCon2026"`
- [ ] **Line 36**: Update sponsorship prospectus PDF path from `MenderCon_2025_Sponsorship_Prospectus.pdf` to `MenderCon_2026_Sponsorship_Prospectus.pdf` (when available)

---

### 2. Update Home Page

#### 2.1 Update Hero Section
**File**: [_includes/hero.html](_includes/hero.html)

- [ ] **Line 7**: Change `<h1>Mender<span class="title-highlight">Con</span> 2025</h1>` to `<h1>Mender<span class="title-highlight">Con</span> 2026</h1>`

#### 2.2 Update Hero Buttons in `_config.yml`
**File**: [_config.yml](_config.yml)

- [x] **Lines 52-54**: Replace the "Get tickets" button with save the date message
  ```yaml
  heroButtons:
   - {permalink: "#about", text: "Learn more"}
   - {permalink: "#save-the-date", text: "Save the Date"}
  ```

#### 2.3 Add "Save the Date" Section to Home Page
**File**: [index.html](index.html)

- [ ] Add new include after hero section: `{% include save-the-date.html %}`

#### 2.4 Create Save the Date Component
**File**: `_includes/save-the-date.html` (new file)

- [ ] Create new include file with:
  - Section explaining May 14, 2026 date
  - Note that tickets will be available later
  - Call to action to join community/mailing list
  - Link to Mastodon/social for updates

---

### 3. Update Navigation & Archive Structure

#### 3.1 Update Navigation in `_config.yml`
**File**: [_config.yml](_config.yml)

- [ ] **Lines 40-47**: Update navigation structure to:
  ```yaml
  navigationLinks:
   - {permalink: "/", text: "Home"}
   - {permalink: "/schedule/", text: "Schedule"}
   - {permalink: "/speakers/", text: "Speakers"}
   - {permalink: "/previous-conferences/", text: "Previous Conferences", dropdown: true}
   - {permalink: "/coc/", text: "Code of Conduct"}
   - {permalink: "/testimonials/", text: "Testimonials"}
   - {permalink: "http://legacycode.rocks", text: "Community"}
   - {permalink: "/faq/", text: "FAQ"}
  ```

#### 3.2 Update Navigation Template to Support Dropdowns
**File**: [_includes/navigation.html](_includes/navigation.html)

- [ ] Modify navigation template to support dropdown menus
- [ ] Add logic to check for `dropdown: true` property
- [ ] Add submenu items for previous conferences
- [ ] Ensure mobile-responsive dropdown behavior

---

### 4. Create Previous Conferences Archive

#### 4.1 Create Previous Conferences Landing Page
**File**: `previous-conferences.html` (new file)

- [ ] Create page listing all previous conferences
- [ ] Currently just 2025
- [ ] Include brief description and link to dedicated page

#### 4.2 Create 2025 Archive Page
**File**: `2025/index.html` (new file)

- [ ] Create dedicated page for MenderCon 2025
- [ ] Include date: May 15, 2025
- [ ] Include speakers list from 2025
- [ ] Include schedule from 2025
- [ ] Include testimonials/highlights if available
- [ ] Use layout similar to current speakers.html

#### 4.3 Copy 2025 Data Files
**Files**: Copy to archive

- [ ] Copy `_data/speakers.yml` to `_data/speakers_2025.yml`
- [ ] Copy `_data/sessions.yml` to `_data/sessions_2025.yml`
- [ ] Copy `_data/schedule.yml` to `_data/schedule_2025.yml`

---

### 5. Update Current Speakers Page

#### 5.1 Update Speakers Page Content
**File**: [speakers.html](speakers.html)

- [ ] Remove/comment out speaker list: `{% include speakers-list.html %}`
- [ ] Add message: "Speakers for MenderCon 2026 will be announced soon. Stay tuned!"
- [ ] Update PaperCall link from "mendercon-2025" to "mendercon-2026" (line 13)
- [ ] Add link to view 2025 speakers in archive

#### 5.2 Clear Current Speaker Data
**File**: `_data/speakers.yml`

- [ ] Clear/comment out all 2025 speakers (keep structure for reference)
- [ ] Add comment at top: "# MenderCon 2026 speakers - TBA"

---

### 6. Update Schedule Page

#### 6.1 Update Schedule Page Content
**File**: [schedule.html](schedule.html)

- [ ] Replace `{% include schedule.html %}` with `{% include schedule-coming-soon.html %}`
- [ ] Add link to view 2025 schedule in archive

#### 6.2 Create Coming Soon Component
**File**: `_includes/schedule-coming-soon.html` (new file)

- [ ] Create new include with:
  - "Schedule coming soon" message
  - Explanation of unconference format
  - Date reminder: May 14, 2026
  - Call to action to follow updates
  - Link to 2025 schedule for reference

#### 6.3 Clear Current Schedule Data
**File**: `_data/schedule.yml`

- [ ] Clear/comment out all 2025 schedule data
- [ ] Keep structure for reference
- [ ] Add comment: "# MenderCon 2026 schedule - TBA"

#### 6.4 Clear Current Sessions Data
**File**: `_data/sessions.yml`

- [ ] Clear/comment out all 2025 sessions
- [ ] Keep structure for reference
- [ ] Add comment: "# MenderCon 2026 sessions - TBA"

---

### 7. Archive Speaker Photos

#### 7.1 Organize Photos
**Directory**: `img/people/`

- [ ] Create subdirectory: `img/people/2025/`
- [ ] Move all 2025 speaker photos to `img/people/2025/`
- [ ] Update photo paths in `_data/speakers_2025.yml` to point to new location

---

### 8. Update Components & Includes

#### 8.1 Create Archive-Specific Components
**Files**: New includes for 2025 archive

- [ ] Create `_includes/speakers-list-2025.html` (copy from speakers-list.html, point to speakers_2025 data)
- [ ] Create `_includes/schedule-2025.html` (copy from schedule.html, point to schedule_2025 data)
- [ ] Create `_includes/sessions-modals-2025.html` (if exists, point to sessions_2025 data)
- [ ] Create `_includes/speakers-modals-2025.html` (if exists, point to speakers_2025 data)

---

### 9. Update Site Metadata & SEO

#### 9.1 Update Meta Tags
**File**: `_config.yml`

- [ ] Update `description` to mention 2026
- [ ] Update `metaKeywords` if they include year-specific terms

#### 9.2 Update Social Sharing Images (if year-specific)
**Directory**: `img/seo/`

- [ ] Check if sharing images include 2025 text
- [ ] Update to 2026 if needed

---

### 10. Update FAQ

#### 10.1 Review FAQ Files
**Directory**: `_faqs/`

- [ ] Review all FAQ markdown files for year-specific references
- [ ] Update any mentions of "2025" to "2026"
- [ ] Update dates to May 14, 2026
- [ ] Update any registration/ticket information to "coming soon"

---

### 11. Update Testimonials Page

#### 11.1 Add 2025 Testimonials (if available)
**File**: `testimonials.html`

- [ ] If new testimonials from 2025 are available, add them
- [ ] Keep existing testimonials from previous years

---

### 12. Update Blog/News

#### 12.1 Create Announcement Post (optional)
**Directory**: `_posts/`

- [ ] Create blog post announcing MenderCon 2026
- [ ] Include date: May 14, 2026
- [ ] Save the date message
- [ ] Link to community resources

---

### 13. Testing Checklist

#### 13.1 Build & Visual Testing
- [ ] Test Docker build: `docker-compose up`
- [ ] Verify home page displays 2026 date
- [ ] Verify "Save the Date" message displays instead of ticket button
- [ ] Verify Mastodon feed shows #MenderCon2026 posts
- [ ] Verify schedule page shows "coming soon" message
- [ ] Verify speakers page shows "coming soon" message
- [ ] Verify previous conferences menu item appears
- [ ] Verify dropdown menu works (desktop & mobile)
- [ ] Verify 2025 archive page loads correctly
- [ ] Verify 2025 speakers display on archive page
- [ ] Verify 2025 schedule displays on archive page

#### 13.2 Link Testing
- [ ] Test all internal links work
- [ ] Test navigation menu (all items)
- [ ] Test dropdown menu items
- [ ] Test links to 2025 archive
- [ ] Test "Save the Date" section links
- [ ] Test Mastodon feed loads with new hashtag

#### 13.3 Responsive Testing
- [ ] Test XS breakpoint (<768px) - mobile
- [ ] Test SM breakpoint (≥768px) - tablet
- [ ] Test MD breakpoint (≥992px) - desktop
- [ ] Test LG breakpoint (≥1200px) - large desktop
- [ ] Test dropdown menu on mobile
- [ ] Test navigation collapse on mobile

#### 13.4 Data Integrity
- [ ] Verify 2025 data preserved in archive files
- [ ] Verify current data files cleared/reset for 2026
- [ ] Verify speaker photos moved to 2025 subdirectory
- [ ] Verify 2025 archive pages use correct data files

---

### 14. Deployment Preparation

#### 14.1 Git Operations
- [ ] Ensure all changes committed
- [ ] Write comprehensive commit message
- [ ] Push to branch
- [ ] Create pull request to main
- [ ] Test on staging (if available)

#### 14.2 Documentation
- [ ] Update AGENTS.md if significant structural changes made
- [ ] Document new archive system
- [ ] Document dropdown navigation implementation

---

## Notes

### Dropdown Navigation Implementation
The current navigation template ([_includes/navigation.html](_includes/navigation.html)) is a flat list structure. To implement dropdowns:

1. Add conditional logic to check for `dropdown` property
2. Nest sub-items under parent menu item
3. Use Bootstrap dropdown classes or custom CSS
4. Ensure mobile-friendly collapse behavior
5. May need JavaScript for hover/click behavior

### Archive System
- Archive pages should be self-contained
- Use separate data files (speakers_2025.yml, etc.)
- Keep photos organized by year
- Consider creating reusable archive templates for future years

### Mastodon Feed
- New hashtag #MenderCon2026 should start being used before launch
- Test that feed works with new hashtag
- May be empty initially until people start using it

### Future Considerations
- Establish pattern for yearly archives (2027, 2028, etc.)
- Consider automating year rollover process
- Create templates for "coming soon" messaging
- Document archive creation process for next year

---

## File Summary

### Files to Modify
- `_config.yml` - Multiple updates (date, hashtag, navigation)
- `_includes/hero.html` - Update year
- `_includes/navigation.html` - Add dropdown support
- `index.html` - Add save the date section
- `speakers.html` - Replace speaker list with coming soon
- `schedule.html` - Replace schedule with coming soon
- `_data/speakers.yml` - Clear for 2026
- `_data/sessions.yml` - Clear for 2026
- `_data/schedule.yml` - Clear for 2026
- FAQ files in `_faqs/` - Update year references

### Files to Create
- `.todos/mendercon-2026.md` - This plan (✓ done)
- `_includes/save-the-date.html` - New section
- `_includes/schedule-coming-soon.html` - Placeholder
- `previous-conferences.html` - Archive landing page
- `2025/index.html` - 2025 archive page
- `_data/speakers_2025.yml` - 2025 speaker archive
- `_data/sessions_2025.yml` - 2025 sessions archive
- `_data/schedule_2025.yml` - 2025 schedule archive
- `_includes/speakers-list-2025.html` - 2025 speaker component
- `_includes/schedule-2025.html` - 2025 schedule component

### Directories to Create
- `.todos/` - Task tracking (✓ done)
- `2025/` - 2025 archive
- `img/people/2025/` - 2025 speaker photos

---

## Estimated Effort
- **Configuration updates**: 30 minutes
- **Navigation dropdown**: 1-2 hours
- **Archive system setup**: 2-3 hours
- **Content updates**: 1 hour
- **Testing**: 1-2 hours
- **Total**: ~6-8 hours

---

## Priority Order
1. Configuration updates (date, hashtag)
2. Home page updates (hero, save the date)
3. Clear current schedule/speakers
4. Create archive structure
5. Move 2025 content to archive
6. Implement navigation dropdown
7. Testing
8. Documentation

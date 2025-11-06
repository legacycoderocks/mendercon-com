# MenderCon 2026 Update Plan

## Overview
Update the MenderCon website from 2025 to 2026, archive 2025 content, and prepare the site for the new conference year.

## Date & Event Information
- **New Date**: May 14, 2026
- **Current Date**: May 15, 2025
- **Status**: Save the Date phase (tickets not yet available)

---

## Tasks

NOTE: Tasks marked with [x] are completed.  You should mark completed tasks as you go.

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

- [x] **Line 7**: Change `<h1>Mender<span class="title-highlight">Con</span> 2025</h1>` to `<h1>Mender<span class="title-highlight">Con</span> 2026</h1>`

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

- [x] Add new include after hero section: `{% include save-the-date.html %}`

#### 2.4 Create Save the Date Component
**File**: `_includes/save-the-date.html` (new file)

- [x] Create new include file with:
  - Section explaining May 14, 2026 date
  - Note that tickets will be available later
  - Call to action to join community/mailing list
  - Link to Mastodon/social for updates

---

### 3. Update Current Speakers Page

#### 3.1 Update Speakers Page Content
**File**: [speakers.html](speakers.html)

- [x] Remove/comment out speaker list: `{% include speakers-list.html %}`
- [x] Add message: "Speakers for MenderCon 2026 will be announced soon. Stay tuned!"
- [x] Update PaperCall link from "mendercon-2025" to "mendercon-2026" (line 13)

#### 3.2 Clear Current Speaker Data
**File**: `_data/speakers.yml`

- [x] Clear/comment out all 2025 speakers (keep structure for reference)
- [x] Add comment at top: "# MenderCon 2026 speakers - TBA"

---

### 4. Update Schedule Page

#### 4.1 Update Schedule Page Content
**File**: [schedule.html](schedule.html)

- [ ] Replace `{% include schedule.html %}` with `{% include schedule-coming-soon.html %}`

#### 4.2 Create Coming Soon Component
**File**: `_includes/schedule-coming-soon.html` (new file)

- [ ] Create new include with:
  - "Schedule coming soon" message
  - Explanation of unconference format
  - Date reminder: May 14, 2026
  - Call to action to follow updates

#### 4.3 Clear Current Schedule Data
**File**: `_data/schedule.yml`

- [ ] Clear/comment out all 2025 schedule data
- [ ] Keep structure for reference
- [ ] Add comment: "# MenderCon 2026 schedule - TBA"

#### 4.4 Clear Current Sessions Data
**File**: `_data/sessions.yml`

- [ ] Clear/comment out all 2025 sessions
- [ ] Keep structure for reference
- [ ] Add comment: "# MenderCon 2026 sessions - TBA"

---

### 5. Update Site Metadata & SEO

#### 5.1 Update Meta Tags
**File**: `_config.yml`

- [ ] Update `description` to mention 2026
- [ ] Update `metaKeywords` if they include year-specific terms

#### 5.2 Update Social Sharing Images (if year-specific)
**Directory**: `img/seo/`

- [ ] Check if sharing images include 2025 text
- [ ] Update to 2026 if needed

---

### 6. Update FAQ

#### 6.1 Review FAQ Files
**Directory**: `_faqs/`

- [ ] Review all FAQ markdown files for year-specific references
- [ ] Update any mentions of "2025" to "2026"
- [ ] Update dates to May 14, 2026
- [ ] Update any registration/ticket information to "coming soon"

---

### 7. Update Testimonials Page

#### 7.1 Add 2025 Testimonials (if available)
**File**: `testimonials.html`

- [ ] If new testimonials from 2025 are available, add them
- [ ] Keep existing testimonials from previous years

---

### 8. Update Blog/News

#### 8.1 Create Announcement Post (optional)
**Directory**: `_posts/`

- [ ] Create blog post announcing MenderCon 2026
- [ ] Include date: May 14, 2026
- [ ] Save the date message
- [ ] Link to community resources

---

### 9. Testing Checklist

#### 9.1 Build & Visual Testing
- [ ] Test Docker build: `docker-compose up`
- [ ] Verify home page displays 2026 date
- [ ] Verify "Save the Date" message displays instead of ticket button
- [ ] Verify Mastodon feed shows #MenderCon2026 posts
- [ ] Verify schedule page shows "coming soon" message
- [ ] Verify speakers page shows "coming soon" message

#### 9.2 Link Testing
- [ ] Test all internal links work
- [ ] Test navigation menu (all items)
- [ ] Test "Save the Date" section links
- [ ] Test Mastodon feed loads with new hashtag

#### 9.3 Responsive Testing
- [ ] Test XS breakpoint (<768px) - mobile
- [ ] Test SM breakpoint (≥768px) - tablet
- [ ] Test MD breakpoint (≥992px) - desktop
- [ ] Test LG breakpoint (≥1200px) - large desktop
- [ ] Test navigation collapse on mobile

#### 9.4 Data Integrity
- [ ] Verify current data files cleared/reset for 2026

---

### 10. Deployment Preparation

#### 10.1 Git Operations
- [ ] Ensure all changes committed
- [ ] Write comprehensive commit message
- [ ] Push to branch
- [ ] Create pull request to main
- [ ] Test on staging (if available)

#### 10.2 Documentation
- [ ] Update AGENTS.md if significant structural changes made

---

## Notes

### Mastodon Feed
- New hashtag #MenderCon2026 should start being used before launch
- Test that feed works with new hashtag
- May be empty initially until people start using it

### Future Considerations
- Consider automating year rollover process
- Create templates for "coming soon" messaging

---

## File Summary

### Files to Modify
- `_config.yml` - Multiple updates (date, hashtag)
- `_includes/hero.html` - Update year
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

### Directories to Create
- `.todos/` - Task tracking (✓ done)

---

## Estimated Effort
- **Configuration updates**: 30 minutes
- **Content updates**: 1 hour
- **Testing**: 1 hour
- **Total**: ~2-3 hours

---

## Priority Order
1. Configuration updates (date, hashtag)
2. Home page updates (hero, save the date)
3. Clear current schedule/speakers
4. Testing
5. Documentation

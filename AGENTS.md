# AGENTS.md - MenderCon Website

## Project Overview

**MenderCon** is a virtual unconference website focused on modernizing and improving software systems. The conference brings together professionals interested in legacy code refactoring, technical debt, and software modernization.

- **Website**: https://mendercon.com
- **Next Event**: May 14, 2026
- **Event Type**: Virtual Unconference (attendee-driven session creation)

## Technology Stack

### Core Framework
- **Jekyll** (Ruby-based static site generator)
- **Bootstrap 3** (responsive CSS framework)
- **jQuery 2.1.1** (DOM manipulation)

### Frontend
- **Sass/SCSS** - CSS preprocessing
- **Compass** - Sass framework
- **Autoprefixer** - Vendor prefix automation
- **Waves.js** - Material Design ripple effects
- **Typed.js** - Typewriter text animation
- **jquery.appear** - Scroll-triggered animations
- **sticky-kit** - Sticky navigation

### Backend/DevOps
- **Docker** - Containerized development environment
- **Ruby 2.5** - Jekyll runtime
- **Node.js 12** - Build tools

### Integrations
- **Mastodon API** - Live community feed from legacycode.rocks instance
- **Eventbrite** - Ticket sales
- **Google Analytics** - Usage tracking
- **Schema.org** - SEO structured data

## Project Structure

```
mendercon-com/
├── _config.yml              # Jekyll configuration
├── _data/                   # Content databases (YAML)
│   ├── speakers.yml        # Speaker profiles
│   ├── sessions.yml        # Conference sessions
│   ├── schedule.yml        # Event timeline
│   ├── organizers.yml      # Organizing institutions
│   └── partners.yml        # Sponsors
├── _includes/              # Reusable HTML components
│   ├── navigation.html
│   ├── hero.html
│   ├── schedule.html       # Main schedule display
│   ├── speakers-list.html  # Speaker grid
│   ├── mastodon-feed.html # Live social feed
│   └── [other sections]
├── _layouts/               # Page templates
│   ├── default.html
│   └── post.html
├── _sass/                  # SCSS stylesheets
│   ├── main.scss
│   ├── partials/
│   └── modules/
├── js/                     # JavaScript
│   ├── default.js         # Core functionality
│   ├── scripts.js         # Animations & Mastodon
│   └── [vendor libraries]
├── img/                    # Images
│   ├── people/            # Speaker headshots
│   └── sections-background/
├── _faqs/                  # FAQ markdown files
├── index.html             # Home page
├── schedule.html          # Schedule page
├── speakers.html          # Speakers page
├── coc.html              # Code of Conduct
└── docker-compose.yml    # Docker configuration
```

## Key Features

### 1. Dynamic Content Management
- **Speakers**: YAML database with profiles, bios, companies, social links
- **Sessions**: Session database linked to speakers by ID
- **Schedule**: Multi-track timeline with color coding
- **Partners/Sponsors**: Manageable sponsor database

### 2. Interactive Components
- **Modal Dialogs**: Speaker and session detail popups
- **Live Mastodon Feed**: Refreshes every 15 seconds showing #MenderCon posts
- **Scroll Effects**: Header transformations, fade effects, animated counters
- **Responsive Navigation**: Mobile-friendly slide-out menu
- **Session Slider**: Carousel for speakers with multiple sessions

### 3. Pages
- **Home** (`/`) - Hero, about, venue, live feed, partners
- **Schedule** (`/schedule/`) - Multi-track schedule with sticky header
- **Speakers** (`/speakers/`) - Grid display with modal bios
- **FAQ** (`/faq/`) - 12 dynamic FAQs from markdown
- **Code of Conduct** (`/coc/`) - Community guidelines
- **Blog** (`/blog/`) - News and updates
- **Testimonials** (`/testimonials/`) - Past attendee feedback

## Development Setup

### Using Docker (Recommended)
```bash
docker-compose up
```
Site available at http://localhost:80/

### Using Local Jekyll
```bash
gem install bundler
bundle install
jekyll serve -w
```
Site available at http://localhost:4000/

## Configuration

### Main Settings (`_config.yml`)
- Site metadata (title, description, URL)
- Event details (date, venue, ticket links)
- Social media (Mastodon hashtag, server)
- Google Analytics tracking ID
- Navigation structure
- Feature flags (sessions, sponsors)

### Docker Configuration
- Base: `ruby:2.5-stretch`
- Port: 80
- Volume: Project directory mounted for live editing
- Command: `jekyll serve -H 0.0.0.0 -P 80 --future`

## Important Files

| File | Purpose |
|------|---------|
| `_config.yml` | Main site configuration |
| `_data/speakers.yml` | Speaker database |
| `_data/sessions.yml` | Session database |
| `_data/schedule.yml` | Event timeline |
| `js/default.js` | Core JavaScript functionality (~230 lines) |
| `js/scripts.js` | Animations and Mastodon integration |
| `_includes/mastodon-feed.html` | Live social feed component |
| `_includes/schedule.html` | Schedule rendering template |
| `_sass/main.scss` | Main stylesheet entry point |

## Git Information

- **Current Branch**: `feature/mendercon-2026-save-the-date`
- **Main Branch**: `main`
- **Deployment**: GitHub Pages (static site hosting)

## Recent Activity

- Speaker and session management updates
- Mastodon feed optimization (refresh rate reduced)
- Sponsor additions
- 2025 conference content updates

## Content Management Workflow

### Adding a Speaker
1. Add entry to `_data/speakers.yml` with unique ID
2. Add speaker headshot to `img/people/`
3. Speaker auto-appears on speakers page

### Adding a Session
1. Add entry to `_data/sessions.yml` with unique ID
2. Link to speaker(s) using speaker IDs
3. Add to schedule in `_data/schedule.yml`

### Updating Schedule
1. Edit `_data/schedule.yml`
2. Define timeslots and tracks
3. Assign sessions to slots by session ID

### Adding FAQ
1. Create markdown file in `_faqs/` directory
2. Include front matter with title and order
3. FAQ auto-appears on FAQ page

## Common Tasks

### Adding/Updating Speakers

1. Edit `_data/speakers.yml` with unique ID
2. Add speaker photo to `img/people/`
3. Test locally with `docker-compose up`

Example speaker entry:
```yaml
- id: 1
  name: "Speaker Name"
  surname: "LastName"
  company: "Company Name"
  title: "Job Title"
  bio: "Speaker biography..."
  thumbnailUrl: "speaker-name.jpg"
  social:
    - name: "twitter"
      link: "https://twitter.com/username"
```

### Adding/Updating Sessions

1. Edit `_data/sessions.yml` with unique ID
2. Link to speakers using their ID from speakers.yml
3. Add to schedule in `_data/schedule.yml`

Example session entry:
```yaml
- id: 100
  title: "Session Title"
  description: "Session description..."
  subtype: "presentation"  # or "keynote", "workshop"
  speakers: [1, 2]  # Speaker IDs
```

### Updating the Schedule

Edit `_data/schedule.yml` to add timeslots and assign sessions:

```yaml
-
  date: "2025-05-15"
  dateReadable: "May 15"
  tracks:
    - {title: "Track 1", color: "#90be4e"}
    - {title: "Track 2", color: "#03a9f4"}
  timeslots:
    - {startTime: "09:00", endTime: "10:00"}
  sessions:
    - {id: 100, slot: 0, track: 0}  # Session 100, first slot, first track
```

### Adding FAQs

1. Create markdown file in `_faqs/` directory
2. Use front matter for title and order
3. Jekyll auto-generates FAQ page

Example FAQ file (`_faqs/001-what-is-mendercon.md`):
```markdown
---
title: "What is MenderCon?"
order: 1
---
MenderCon is a virtual unconference...
```

### Updating Site Configuration

Edit `_config.yml` for:
- Event date and details
- Social media settings (Mastodon hashtag, refresh rate)
- Hero buttons and CTAs
- Navigation links
- Feature flags (show/hide sections)
- Google Analytics ID

### Managing Sponsors

Edit `_data/partners.yml` to add/update sponsors and partners.

## Important Conventions

### YAML Data Files
- **Consistent ID usage**: Speaker IDs must match between files
- **Required fields**: Don't skip required fields (id, name, title, etc.)
- **Image paths**: Relative to site root (e.g., `speaker-name.jpg` in people folder)
- **Proper YAML syntax**: Use correct indentation (2 spaces)

### Images
- Speaker photos: `img/people/`
- Backgrounds: `img/sections-background/`
- Optimize images before adding (compress, resize appropriately)

### Liquid Templates
- Use Jekyll's Liquid syntax for dynamic content
- Access data with `site.data.speakers`, `site.data.sessions`, etc.
- Loop through collections with `{% for %}` tags
- Conditional rendering with `{% if %}` tags

### Responsive Design
- Bootstrap 3 breakpoints: XS (<768px), SM (≥768px), MD (≥992px), LG (≥1200px)
- Test all changes across breakpoints
- Mobile-first approach

## Special Features

### Mastodon Feed
- Lives in `_includes/mastodon-feed.html`
- Fetches from legacycode.rocks Mastodon instance
- Hashtag: #MenderCon (configurable in _config.yml)
- Refresh interval: 15 seconds (configurable)
- JavaScript in `js/scripts.js`

### Modal System
- Speakers and sessions use Bootstrap modals
- Auto-generated from YAML data
- Templates: `_includes/speakers-modals.html`, `_includes/sessions-modals.html`

### Schema.org Markup
- Structured data for SEO
- Event schema in templates
- Helps search engines understand event details

## Development Workflow

### Local Development
```bash
# Using Docker (recommended)
docker-compose up

# Using local Jekyll
bundle install
jekyll serve -w
```

### Making Changes
1. Create feature branch from `main`
2. Make changes to appropriate files
3. Test locally with Docker
4. Commit with descriptive messages
5. Create PR to `main` branch

### Testing Checklist
- [ ] Site builds without errors
- [ ] All pages load correctly
- [ ] Schedule displays properly
- [ ] Speaker modals work
- [ ] Mobile responsive (test XS, SM, MD, LG)
- [ ] Mastodon feed loads
- [ ] Links work (internal and external)

## Troubleshooting

### Jekyll Won't Build
- Check YAML syntax in `_data/` files (use YAML validator)
- Ensure all referenced images exist
- Check Ruby/Jekyll version compatibility
- Review error messages in terminal

### Mastodon Feed Not Loading
- Check `_config.yml` for correct server URL and hashtag
- Verify Mastodon instance is accessible
- Check browser console for JavaScript errors
- Review `js/scripts.js` for API call issues

### Styles Not Applying
- Rebuild site (Jekyll may need restart)
- Clear browser cache
- Check SCSS syntax in `_sass/` files
- Verify `main.scss` imports are correct

### Schedule Not Displaying Correctly
- Verify session IDs in `_data/schedule.yml` match `_data/sessions.yml`
- Check speaker IDs in sessions match `_data/speakers.yml`
- Review track definitions and slot assignments

## Best Practices for AI Agents

### When Making Changes
1. **Always read files first** before editing
2. **Preserve existing structure** - don't reformat unnecessarily
3. **Test after changes** - use Docker to verify
4. **Maintain consistency** - follow existing patterns
5. **Update related files** - if adding speaker, update sessions and schedule

### When Adding Content
1. **Use existing IDs** - increment from highest existing ID
2. **Follow naming conventions** - kebab-case for files, camelCase for IDs
3. **Optimize assets** - compress images before adding
4. **Update all references** - speakers → sessions → schedule chain

### When Refactoring
1. **Understand Jekyll** - this is a static site, not a web app
2. **Don't break builds** - test thoroughly
3. **Preserve functionality** - especially Mastodon feed and modals
4. **Maintain mobile responsiveness** - test all breakpoints

### Security Notes
- No server-side code = minimal attack surface
- Static site = no database vulnerabilities
- Be cautious with external scripts (CDNs)
- Keep dependencies updated (Gemfile)

## Project Context

### Unconference Format
MenderCon is an **unconference** - attendees create the schedule on-the-fly rather than following pre-set sessions. The website reflects this with:
- Flexible schedule structure
- Call for session proposals
- Community-driven content

### Legacy Code Focus
The conference focuses on:
- Modernizing legacy systems
- Technical debt management
- Refactoring strategies
- Software improvement practices

This informs content decisions and community engagement.

## Notes for AI Agents

- This is a **static site** - no database or server-side code
- Content is managed through **YAML files** in `_data/`
- Layout uses **Jekyll's Liquid templating** language
- Custom modifications to base GDG Zeppelin template
- **Mastodon integration** is a unique feature (not in base template)
- Site focused on **legacy code modernization** community
- **Unconference format** - sessions created by attendees, not pre-scheduled
- Always test changes with `docker-compose up` before committing
- Preserve YAML structure when editing data files
- Maintain responsive design across breakpoints (XS, SM, MD, LG)

## Resources

- **Jekyll Documentation**: https://jekyllrb.com/docs/
- **Liquid Template Language**: https://shopify.github.io/liquid/
- **Bootstrap 3 Docs**: https://getbootstrap.com/docs/3.4/
- **Mastodon API**: https://docs.joinmastodon.org/api/

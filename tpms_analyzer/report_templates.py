CANDIDATE_DRAWER_HTML = """
  <div id="candidateDrawer" class="candidate-drawer"
       role="dialog" aria-modal="true"
       aria-hidden="true" aria-labelledby="candidateDrawerTitle">
    <div class="candidate-drawer-backdrop" onclick="closeCandidateDrawer()"></div>
    <div class="candidate-drawer-panel">
      <div class="candidate-drawer-header">
        <strong id="candidateDrawerTitle">Candidate details</strong>
        <button type="button" class="candidate-drawer-close"
                onclick="closeCandidateDrawer()">&#x2715; Close</button>
      </div>
      <div id="candidateDrawerBody"></div>
    </div>
  </div>
  <button id="backToTopButton" class="back-to-top-button" type="button" aria-label="Back to top">
    &#x2191; Top
  </button>
"""
